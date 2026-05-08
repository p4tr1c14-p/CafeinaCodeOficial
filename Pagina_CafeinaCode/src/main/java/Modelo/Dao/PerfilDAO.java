/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo.Dao;

import Configuracion.Conexion;
import Modelos.Perfil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author alber
 */
public class PerfilDAO {
    public Perfil obtenerPerfil(int idUsuario) {
    Perfil p = null;
    String sql = "SELECT * FROM perfil WHERE id_usuario = ?";
    try (Connection con = Conexion.conectar();
         PreparedStatement ps = con.prepareStatement(sql)) {
        ps.setInt(1, idUsuario);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            p = new Perfil();
            p.setPais(rs.getString("pais"));
            p.setNombre(rs.getString("nombre"));
            p.setCorreo(rs.getString("correo")); // Agrega el correo si lo tienes en la tabla
            p.setRedes_sociales(rs.getString("redes_sociales"));
            p.setSobre_mi(rs.getString("sobre_mi"));
            p.setLogros_obtenidos(rs.getString("logros_obtenidos"));
            p.setProgreso(rs.getString("progreso"));
            p.setLenguajes_conocidos(rs.getString("lenguajes_conocidos")); 
            p.setNivel_del_curso(rs.getString("nivel_del_curso"));// Corregido
        }
    } catch (Exception e) { e.printStackTrace(); }
    return p;
}
}
