 /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;
import Modelo.Dao.RegistroDAO;
import Modelos.Registro;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "RegistroServlet", urlPatterns = {"/RegistroServlet"})
public class RegistroServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email      = request.getParameter("correo");
        String password   = request.getParameter("password");
        String userAlias  = request.getParameter("nombre_usuario");
        
        System.out.println("Intentando registrar: " + userAlias + " | " + email);
        
        Registro reg = new Registro();
        reg.setCorreo(email);
        reg.setPassword(password);
        
        RegistroDAO dao = new RegistroDAO();
        
        try {
            int idGenerado = dao.registrarUsuario(reg, userAlias);
            
            if (idGenerado != -1) {
                // Guardar sesión
                request.getSession().setAttribute("id_usuario", idGenerado);
                request.getSession().setAttribute("nombre_usuario", userAlias);
                response.sendRedirect("PerfilServlet");
            } else {
                response.sendRedirect("Registro.jsp?error=fail");
            }
            
        } catch (Exception e) {
            e.printStackTrace();
            // Detectar correo duplicado
            if (e.getMessage() != null && e.getMessage().contains("Duplicate entry")) {
                response.sendRedirect("Registro.jsp?error=duplicado");
            } else {
                response.sendRedirect("Registro.jsp?error=db");
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Servlet de Registro para Cafeína Code";
    }
}