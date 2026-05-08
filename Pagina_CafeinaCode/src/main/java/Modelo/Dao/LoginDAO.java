/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo.Dao;

import Configuracion.Conexion;
import Modelos.Login;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;

/**
 *
 * @author alber
 */
public class LoginDAO {
    public int validarUsuario(String correo, String pass) {
        String sql = "SELECT id_usuario, nombre_usuario FROM usuario WHERE correo = ? AND contrasena = ?";

        try (Connection con = Conexion.conectar();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, correo);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();

            if(rs.next()){
    int idEncontrado = rs.getInt("id_usuario");
    System.out.println("LOG: ¡Usuario encontrado en DB! ID: " + idEncontrado);
    return idEncontrado;
} else {
    System.out.println("LOG: Query ejecutada, pero NO hubo coincidencias para: " + correo);
}

        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
}
