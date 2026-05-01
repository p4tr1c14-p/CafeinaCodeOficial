/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo.Dao;

import Configuracion.Conexion;
import Modelos.Challenges;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Dell
 */
public class ChallengesDAO {

    /**
     * Guarda la respuesta del usuario junto con el resultado de la IA
     * en la tabla respuesta_usuario.
     *
     * @param c  objeto Challenges con los datos a insertar
     * @param idEjercicio  id del ejercicio que respondió el usuario
     */
    public void guardarRespuesta(Challenges c, int idEjercicio) {
        String sql = "INSERT INTO respuesta_usuario "
                   + "(id_ejercicios_challenges, codigo_respuesta, ejercicio_texto, resultado_ia, retroalimentacion) "
                   + "VALUES (?, ?, ?, ?, ?)";

        try (Connection con = Conexion.conectar();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, idEjercicio);
            ps.setString(2, c.getCodigo_respuesta());
            ps.setString(3, c.getEjercicio_texto());
            ps.setString(4, c.getResultado_ia());
            ps.setString(5, c.getRetroalimentacion());
            ps.executeUpdate();

            System.out.println("Respuesta guardada correctamente.");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * Obtiene una respuesta guardada por su id.
     *
     * @param id  id_respuesta_usuario
     * @return objeto Challenges con los datos, o null si no existe
     */
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
                c.setEjercicio_texto(rs.getString("ejercicio_texto"));
                c.setResultado_ia(rs.getString("resultado_ia"));
                c.setRetroalimentacion(rs.getString("retroalimentacion"));
                c.setFecha(rs.getString("fecha"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return c;
    }

    /**
     * Guarda la retroalimentación escrita por el usuario al final
     * en la tabla challenges.
     *
     * @param retroalimentacion  texto que escribió el usuario en Challenges_2
     * @param idGuia             id de la guía relacionada (puede ser 1 si solo hay una)
     */
    public void guardarRetroalimentacionFinal(String retroalimentacion, int idGuia) {
        String sql = "INSERT INTO challenges (retroalimentacion_usuario, id_guia) VALUES (?, ?)";

        try (Connection con = Conexion.conectar();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, retroalimentacion);
            ps.setInt(2, idGuia);
            ps.executeUpdate();

            System.out.println("Retroalimentación final guardada.");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}