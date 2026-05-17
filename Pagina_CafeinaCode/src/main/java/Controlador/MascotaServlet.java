package Controlador;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/MascotaServlet")
public class MascotaServlet extends HttpServlet {

    private final String URL = "jdbc:mysql://localhost:3306/cafeina_code?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
    private final String USER = "root";
    private final String PASS = "perezcruz123#";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("id_usuario") == null) {
            response.setStatus(401);
            response.getWriter().write("No hay sesión activa");
            return;
        }

        int idUsuario = (int) session.getAttribute("id_usuario");
        String nombre = request.getParameter("nombre");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection conn = DriverManager.getConnection(URL, USER, PASS)) {

                int idFrase = 1;
                String sqlFrase = "SELECT id_frase_motivacional FROM frase_motivacional ORDER BY RAND() LIMIT 1";
                try (PreparedStatement psFrase = conn.prepareStatement(sqlFrase);
                     ResultSet rs = psFrase.executeQuery()) {
                    if (rs.next()) {
                        idFrase = rs.getInt(1);
                    }
                }

                String sql = "INSERT INTO mascota (id_mascota, nombre_mascota, racha, id_frase_motivacional) " +
                             "VALUES (?, ?, 0, ?) ON DUPLICATE KEY UPDATE nombre_mascota = ?, id_frase_motivacional = ?";

                try (PreparedStatement ps = conn.prepareStatement(sql)) {
                    ps.setInt(1, idUsuario);
                    ps.setString(2, nombre);
                    ps.setInt(3, idFrase);
                    ps.setString(4, nombre);
                    ps.setInt(5, idFrase);
                    ps.executeUpdate();
                }

                response.setContentType("text/plain");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write("OK");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.setStatus(500);
            response.getWriter().write("Error: " + e.getMessage());
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("id_usuario") == null) {
            response.setContentType("application/json");
            response.getWriter().write("{\"frase\": \"\", \"nombre\": \"\"}");
            return;
        }

        int idUsuario = (int) session.getAttribute("id_usuario");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection conn = DriverManager.getConnection(URL, USER, PASS)) {

                String sql = "SELECT m.nombre_mascota, m.racha, f.descripcion_frase " +
                            "FROM mascota m JOIN frase_motivacional f " +
                            "ON m.id_frase_motivacional = f.id_frase_motivacional " +
                            "WHERE m.id_mascota = ?";

                try (PreparedStatement ps = conn.prepareStatement(sql)) {
                    ps.setInt(1, idUsuario);
                    ResultSet rs = ps.executeQuery();

                    if (rs.next()) {
                        String nombreMascota = rs.getString("nombre_mascota");
                        String frase = rs.getString("descripcion_frase");
                        response.setContentType("application/json");
                        response.setCharacterEncoding("UTF-8");
                        response.getWriter().write(
                            "{\"nombre\": \"" + nombreMascota + "\", " +
                            "\"frase\": \"" + frase + "\", " +
                            "\"racha\": " + rs.getInt("racha") + "}"
                        );
                    } else {
                        response.setContentType("application/json");
                        response.getWriter().write("{\"frase\": \"\", \"nombre\": \"\"}");
                    }
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.setStatus(500);
        }
    }
}