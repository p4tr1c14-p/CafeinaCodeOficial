package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.Dao.LoginDAO;

/**
 * Servlet de Login corregido para Patricia
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html><body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body></html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 1. Obtener datos del formulario
        String email = request.getParameter("correo"); 
        String password = request.getParameter("password");
        
        // DEBUG: Esto aparecerá en la consola de NetBeans
        System.out.println("Intentando login con: " + email);

        LoginDAO dao = new LoginDAO();
        int idUsuario = dao.validarUsuario(email, password);

        if (idUsuario != -1) {
            // Guardamos el ID en la sesión
            request.getSession().setAttribute("id_usuario", idUsuario);
            
            // REDIRECCIÓN CORRECTA: Enviamos al JSP directamente
            response.sendRedirect("Perfil.jsp"); 
        } else {
            // MENSAJE DE ERROR Y VUELTA AL INDEX
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script type='text/javascript'>");
            out.println("alert('Usuario o contraseña incorrectos');");
            out.println("location='index.jsp';"); // Volver al index.jsp
            out.println("</script>");
        }
    }

    @Override
    public String getServletInfo() {
        return "Login Servlet para Cafeína Code";
    }
}