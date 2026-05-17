package Controlador;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.*;
import java.util.Scanner;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ChallengeServlet", urlPatterns = {"/obtenerEjercicio", "/evaluarRespuesta"})
public class ChallengesServlet extends HttpServlet {

    private static final String DB_URL  = "jdbc:mysql://localhost:3306/cafeina_code?connectTimeout=3000";
    private static final String DB_USER = "root";
    private static final String DB_PASS = "perezcruz123#";
    private static final String AI_KEY  = "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";
    private static final String AI_URL  = "https://openrouter.ai/api/v1/chat/completions";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        try (PrintWriter out = response.getWriter()) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                DriverManager.setLoginTimeout(3);

                try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS)) {
                    String sql = "SELECT id_ejercicios_challenges, descripcion_ejercicio " +
                                 "FROM ejercicios_challenges ORDER BY RAND() LIMIT 1";

                    try (PreparedStatement ps = conn.prepareStatement(sql);
                         ResultSet rs = ps.executeQuery()) {

                        if (rs.next()) {
                            int    id   = rs.getInt("id_ejercicios_challenges");
                            String desc = rs.getString("descripcion_ejercicio")
                                            .replace("\"", "'")
                                            .replace("\n", " ");
                            out.print("{\"id\": " + id + ", \"ejercicio\": \"" + desc + "\"}");
                        } else {
                            out.print("{\"id\": null, \"ejercicio\": \"La tabla está vacía en MySQL.\"}");
                        }
                    }
                }

            } catch (ClassNotFoundException e) {
                out.print("{\"ejercicio\": \"ERROR: Falta el Driver de MySQL.\"}");
            } catch (SQLException e) {
                out.print("{\"ejercicio\": \"ERROR BD: " + e.getMessage().replace("\"", "'") + "\"}");
            } catch (Exception e) {
                out.print("{\"ejercicio\": \"ERROR GENERAL: " + e.getMessage() + "\"}");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        String codigo      = request.getParameter("codigo");
        String ejercicio   = request.getParameter("ejercicio");
        String idEjercicio = request.getParameter("idEjercicio");

        System.out.println("=== DATOS RECIBIDOS ===");
        System.out.println("codigo: "      + codigo);
        System.out.println("ejercicio: "   + ejercicio);
        System.out.println("idEjercicio: " + idEjercicio);
        System.out.println("=======================");

        if (codigo == null || codigo.trim().isEmpty() ||
            ejercicio == null || idEjercicio == null) {
            try (PrintWriter out = response.getWriter()) {
                out.print("{\"retroalimentacion\": \"Error: datos incompletos recibidos por el servidor.\"}");
            }
            return;
        }

        try (PrintWriter out = response.getWriter()) {
            try {
                String resultadoIA = evaluarConOpenRouter(ejercicio, codigo);

                Class.forName("com.mysql.cj.jdbc.Driver");
                try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS)) {
                    String sql = "INSERT INTO respuesta_usuario " +
                                 "(id_ejercicios_challenges, codigo_respuesta, resultado_ia) " +
                                 "VALUES (?, ?, ?)";

                    try (PreparedStatement ps = conn.prepareStatement(sql)) {
                        ps.setInt(1, Integer.parseInt(idEjercicio));
                        ps.setString(2, codigo);
                        ps.setString(3, resultadoIA);
                        ps.executeUpdate();
                    }
                }

                String safeResult = resultadoIA
                    .replace("\\", "\\\\")
                    .replace("\"", "'")
                    .replace("\n", "\\n")
                    .replace("\r", "");

                out.print("{\"retroalimentacion\": \"" + safeResult + "\"}");

            } catch (Exception e) {
                System.out.println("ERROR EN DOPOST: " + e.getMessage());
                if (!response.isCommitted()) {
                    com.google.gson.JsonObject jsonErr = new com.google.gson.JsonObject();
                    jsonErr.addProperty("retroalimentacion", "Error al evaluar: " + e.getMessage());
                    response.getWriter().print(jsonErr.toString());
                }
            }
        }
    }

    private String evaluarConOpenRouter(String ejercicio, String codigoUsuario) throws Exception {
        com.google.gson.Gson gson = new com.google.gson.Gson();

        java.util.Map<String, Object> jsonMap = new java.util.HashMap<>();
        jsonMap.put("model", "nvidia/nemotron-3-super-120b-a12b:free");

        java.util.List<java.util.Map<String, String>> messages = new java.util.ArrayList<>();
        java.util.Map<String, String> message = new java.util.HashMap<>();
        message.put("role", "user");
        message.put("content", "Eres un tutor de Java amigable. "
                + "El ejercicio es: " + ejercicio + ". "
                + "El estudiante respondió: " + codigoUsuario + ". "
                + "Evalúa en español en máximo 2 oraciones. "
                + "Empieza con CORRECTO, INCORRECTO o PARCIALMENTE CORRECTO.");
        messages.add(message);

        jsonMap.put("messages", messages);
        String body = gson.toJson(jsonMap);

        URL url = new URL(AI_URL);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("POST");
        conn.setDoOutput(true);
        conn.setConnectTimeout(10000);
        conn.setReadTimeout(15000);
        conn.setRequestProperty("Content-Type", "application/json");
        conn.setRequestProperty("Authorization", "Bearer " + AI_KEY);

        try (OutputStream os = conn.getOutputStream()) {
            os.write(body.getBytes("UTF-8"));
        }

        int statusCode = conn.getResponseCode();
        System.out.println("STATUS IA: " + statusCode);

        java.io.InputStream stream = (statusCode == 200) ? conn.getInputStream() : conn.getErrorStream();
        StringBuilder sb = new StringBuilder();
        try (Scanner sc = new Scanner(stream, "UTF-8")) {
            while (sc.hasNextLine()) sb.append(sc.nextLine());
        }

        String jsonResponse = sb.toString();
        System.out.println("RESPUESTA COMPLETA IA: " + jsonResponse);

        if (statusCode != 200) {
            throw new Exception("Error IA (Status " + statusCode + "): " + jsonResponse);
        }

        try {
            com.google.gson.JsonObject root = gson.fromJson(jsonResponse, com.google.gson.JsonObject.class);
            return root.getAsJsonArray("choices")
                       .get(0).getAsJsonObject()
                       .getAsJsonObject("message")
                       .get("content").getAsString();
        } catch (Exception e) {
            System.out.println("Error al parsear JSON: " + e.getMessage());
            return "Error al procesar la respuesta de la IA.";
        }
    }
}