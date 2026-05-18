/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Dao.PerfilDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author alber
 */
@WebServlet(name = "EditarPerfilServlet", urlPatterns = {"/EditarPerfilServlet"})
public class EditarPerfilServlet extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditarPerfilServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditarPerfilServlet at " + request.getContextPath() + "</h1>");
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
        // 1. Validar la sesión
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("id_usuario") == null) {
            response.sendRedirect("index.jsp"); // O tu página de login
            return;
        }
        
        int idUsuario = (int) session.getAttribute("id_usuario");
        
        // 2. Recuperar los parámetros enviados desde el formulario JSP
        String pais = request.getParameter("pais");
        String sobreMi = request.getParameter("sobre_mi");
        String redes = request.getParameter("redes_sociales");
        String lenguajesconocidos = request.getParameter("lenguajes_conocidos");
        
        // 3. Llamar al DAO para guardar en la BD
        PerfilDAO dao = new PerfilDAO();
        boolean actualizado = dao.actualizarPerfil(idUsuario, pais, sobreMi, redes, lenguajesconocidos);
        
        // 4. Redirigir de vuelta al PerfilServlet para que recargue los datos actualizados
        if (actualizado) {
            response.sendRedirect("PerfilServlet?msg=success");
        } else {
            response.sendRedirect("PerfilServlet?msg=error");
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
