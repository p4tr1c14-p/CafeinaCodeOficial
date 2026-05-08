package Modelo.Dao;
import Configuracion.Conexion;
import Modelos.Challenges;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ChallengesDAO {

    public void guardarRespuesta(Challenges c, int idEjercicio) {
        String sql = "INSERT INTO respuesta_usuario "
                   + "(id_ejercicios_challenges, codigo_respuesta, resultado_ia) "
                   + "VALUES (?, ?, ?)";
        try (Connection con = Conexion.conectar();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, idEjercicio);
            ps.setString(2, c.getCodigo_respuesta());
            ps.setString(3, c.getResultado_ia());
            ps.executeUpdate();
            System.out.println("Respuesta guardada correctamente.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Challenges obtenerPorId(int id) {
        Challenges c = null;
        String sql = "SELECT * FROM respuesta_usuario WHERE id_respuesta_usuario = ?";
        try (Connection con = Conexion.conectar();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                c = new Challenges();
                c.setId(rs.getInt("id_respuesta_usuario"));
                c.setCodigo_respuesta(rs.getString("codigo_respuesta"));
                c.setResultado_ia(rs.getString("resultado_ia"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return c;
    }

    public void guardarRetroalimentacionFinal(String retroalimentacion, int idLeccion) {
        String sql = "UPDATE challenges SET retroalimentacion_usuario = ? WHERE id_lecciones = ?";
        try (Connection con = Conexion.conectar();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, retroalimentacion);
            ps.setInt(2, idLeccion);
            ps.executeUpdate();
            System.out.println("Retroalimentación final guardada.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}