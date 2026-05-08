package Controlador;
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
        
        String texto = request.getParameter("retroalimentacion");
        ChallengesDAO dao = new ChallengesDAO();
        dao.guardarRetroalimentacionFinal(texto, 2);
        response.sendRedirect("index.jsp");
    }
}