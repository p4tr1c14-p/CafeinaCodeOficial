package Controlador;
import Modelo.Dao.ChallengesDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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