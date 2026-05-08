package Controlador; // Asegúrate de que coincida con tu carpeta

import Modelo.Dao.ChallengesDAO;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet(name = "GuardarRetroServlet", urlPatterns = {"/GuardarRetroServlet"})
public class GuardarRetroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 1. Capturamos lo que el usuario escribió
        String texto = request.getParameter("retroalimentacion");
        String idStr = request.getParameter("idLecciones");
        int idLeccion = Integer.parseInt(idStr);

        // 2. Usamos tu DAO para guardar en la base de datos
        ChallengesDAO dao = new ChallengesDAO();
        dao.guardarRetroalimentacionFinal(texto, idLeccion);

        // 3. Redirigimos al usuario a la página de inicio o éxito
        response.sendRedirect("Inicio.html"); 
    }
}
