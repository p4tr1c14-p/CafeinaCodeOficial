package Servlets;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author alber
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    
    // 1. Obtener datos del formulario
    String email = request.getParameter("correo"); 
    String password = request.getParameter("password");

    // 2. Intentar la validación
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        // 
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cafeina_code", "root", "1234");

        
        String sql = "SELECT * FROM usuario WHERE correo = ? AND passsword = ?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, email);
        ps.setString(2, password);
       
        
        System.out.println("DEBUG: Intento de login");
        System.out.println("DEBUG: Correo recibido: [" + email + "]");
        System.out.println("DEBUG: Clave recibida: [" + password + "]");
        
        System.out.println("Buscando a :" + email + " y contraseña:" + password);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            //va a la página principal de Cafeína Code si sale bien
            response.sendRedirect("Perfil.html");
        } else {
            //regresa al login con error 1
            response.sendRedirect("index.html?error=1");
        }
        
        con.close(); // Siempre es bueno cerrar la conexión
    } catch (Exception e) {
        // Esto saldrá en la consola de NetBeans si algo falla
        e.printStackTrace(); 
        response.getWriter().println("Error de conexión: " + e.getMessage());
    }
}

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
