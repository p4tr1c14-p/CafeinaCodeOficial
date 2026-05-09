package Modelo.Dao;

import Configuracion.Conexion;
import Modelos.Challenges;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ChallengesDAO {

    public void guardarRespuesta(Challenges c, int idEjercicio) {
        String sql = "INSERT INTO respuesta_usuario (id_ejercicios_challenges, codigo_respuesta, resultado_ia) VALUES (?, ?, ?)";
        try (Connection con = Conexion.conectar();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, idEjercicio);
            ps.setString(2, c.getCodigo_respuesta());
            ps.setString(3, c.getResultado_ia());
            ps.executeUpdate();
            System.out.println("LOG: Respuesta guardada en respuesta_usuario.");
        } catch (SQLException e) {
            System.err.println("ERROR en guardarRespuesta: " + e.getMessage());
        }
    }

    public Challenges obtenerPorId(int id) {
        Challenges c = null;
        String sql = "SELECT * FROM respuesta_usuario WHERE id_respuesta_usuario = ?";
        try (Connection con = Conexion.conectar();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    c = new Challenges();
                    c.setId(rs.getInt("id_respuesta_usuario"));
                    c.setCodigo_respuesta(rs.getString("codigo_respuesta"));
                    c.setResultado_ia(rs.getString("resultado_ia"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return c;
    }

    public void guardarRetroalimentacionFinal(String retroalimentacion, int idLeccion) {
        String sql = "INSERT INTO challenges (id_lecciones, retroalimentacion_usuario) VALUES (?, ?)";
        try (Connection con = Conexion.conectar();
             PreparedStatement ps = con.prepareStatement(sql)) {
            
            ps.setInt(1, idLeccion);
            ps.setString(2, retroalimentacion);
            
            int filas = ps.executeUpdate();
            if (filas > 0) {
                System.out.println("LOG: Nueva retroalimentación insertada correctamente.");
            }
        } catch (SQLException e) {
            // Esto te dirá en la consola si el error es por duplicado o por llave foránea
            System.err.println("ERROR CRÍTICO AL INSERTAR RETROALIMENTACIÓN: " + e.getMessage());
            e.printStackTrace();
        }
    }
}