package Controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.Dao.LeccionesDAO;
import Modelos.Lecciones;
import javax.servlet.annotation.WebServlet;

@WebServlet("/lecciones")
public class LeccionesServlet extends HttpServlet {

    LeccionesDAO dao = new LeccionesDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");
        if (accion == null) accion = "listar";

        switch (accion) {

            case "listar":

                request.setAttribute("lista", dao.listar());

                request.getRequestDispatcher("/lecciones.jsp")
                       .forward(request, response);
                return;

            case "eliminar":
                int idEliminar = Integer.parseInt(request.getParameter("id"));
                dao.eliminar(idEliminar);
                response.sendRedirect("lecciones?accion=listar");
                return;

            default:
                response.sendRedirect("lecciones?accion=listar");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");

        if ("guardar".equals(accion)) {

            Lecciones l = new Lecciones();

            String idTema = request.getParameter("id_tema");
            String descripcion = request.getParameter("descripcion");

            String nombreTema = "";
            String destino = "";
            String mensaje = "";

            if (idTema != null) {

                switch (idTema) {

                    case "1":
                        nombreTema = "FUNDAMENTOS DE JAVA";
                        destino = "/leccion3.jsp";
                        mensaje = "🎉 ¡Felicidades acompletaste un 11.11% de tu lección!";
                        break;

                    case "2":
                        nombreTema = "CONCEPTOS BÁSICOS";
                        destino = "/leccion4.jsp";
                        mensaje = "🎉 ¡Felicidades acompletaste un 11.11% de tu lección!";
                        break;

                    case "3":
                        nombreTema = "ARREGLOS";
                        destino = "/leccion5.jsp";
                        mensaje = "🎉 ¡Felicidades acompletaste un 11.11% de tu lección!";
                        break;

                    case "4":
                        nombreTema = "CAST DE VARIABLES";
                        destino = "/leccion6.jsp";
                        mensaje = "🎉 ¡Felicidades acompletaste un 11.11% de tu lección!";
                        break;

                    case "5":
                        nombreTema = "TIPO DE VARIABLES";
                        destino = "/leccion7.jsp";
                        mensaje = "🎉 ¡Felicidades acompletaste un 11.11% de tu lección!";
                        break;

                    case "6":
                        nombreTema = "CLASES DE OPERADORES";
                        destino = "/leccion8.jsp";
                        mensaje = "🎉 ¡Felicidades acompletaste un 11.11% de tu lección!";
                        break;
                    case "7":
                        nombreTema = "SENTENCIAS IF-ELSE";
                        destino = "/leccion9.jsp";
                        mensaje = "🎉 ¡Felicidades acompletaste un 11.11% de tu lección!";
                        break;
                    case "8":
                        nombreTema = "CONSTRUCTORES";
                        destino = "/leccion10.jsp";
                        mensaje = "🎉 ¡Felicidades acompletaste un 11.11% de tu lección!";
                        break;
                    case "9":
                        nombreTema = "SENTENCIAS IF-ELSE";
                        destino = "/leccion11.jsp";
                        mensaje = "🎉 ¡Felicidades acompletaste un 11.11% de tu lección!";
                        break;
                    case "10":
                        nombreTema = "CONSTRUCTORES";
                        destino = "/leccion12.jsp";
                        mensaje = "🎉 ¡Felicidades completaste el 100% de tus lecciones, ahora continua con tus ejercicios!";
                        break;
                    default:
                        destino = "/lecciones.jsp";
                        break;
                }

            } else {
                destino = "/lecciones.jsp";
            }

            l.setNombre_leccion(nombreTema);
            l.setDescripcion(descripcion);

            // Guardar lección
            dao.insertar(l);

            // Actualizar racha
            Object idSesion = request.getSession().getAttribute("id_usuario");

            if (idSesion != null) {
                dao.actualizarRacha((int) idSesion);
            }

            // Mensaje
            request.getSession().setAttribute("mensajeExito", mensaje);

            // Redirección
            response.sendRedirect(request.getContextPath() + destino);
        }
    }
}