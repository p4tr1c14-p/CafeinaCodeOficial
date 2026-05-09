package com.mycompany.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MascotaServlet")
public class MascotaServlet extends HttpServlet {
    
    // Configuración de la DB
    private final String URL = "jdbc:mysql://localhost:3306/cafeina_code?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
    private final String USER = "root"; 
    private final String PASS = "123"; 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre");
        System.out.println("DEBUG: Recibiendo nombre -> " + nombre);

        // SQL: Si el id 1 existe, actualiza el nombre. Si no, lo inserta.
        String sql = "INSERT INTO mascota (id_mascota, nombre_mascota, racha) VALUES (1, ?, 0) " +
                     "ON DUPLICATE KEY UPDATE nombre_mascota = ?";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection conn = DriverManager.getConnection(URL, USER, PASS);
                 PreparedStatement ps = conn.prepareStatement(sql)) {
                
                ps.setString(1, nombre);
                ps.setString(2, nombre);
                int filas = ps.executeUpdate();
                
                System.out.println("DEBUG: Filas afectadas -> " + filas);
                
                response.setContentType("text/plain");
                response.getWriter().write("Éxito: Mascota guardada");
            }
        } catch (Exception e) {
            e.printStackTrace(); // Esto saldrá en la pestaña Output de NetBeans
            response.setStatus(500);
            response.getWriter().write("Error en el servidor: " + e.getMessage());
        }
    }
}