/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo.Dao;

import Configuracion.Conexion;
import Modelos.Registro;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author alber
 */
public class RegistroDAO {
    public boolean registrarUsuario(Registro r, String nombreUser) throws SQLException {
        String sqlUser = "INSERT INTO usuario(rol, nombre_usuario, correo, contrasena) values(?, ?, ?, ?)";
        String sqlPerfil = "insert into perfil(id_usuario, nombre, correo, progreso, nivel_del_curso, pais, lenguajes_conocidos) values(?, ?, ?, ?, ?, ?, ? )";
        
        Connection con = null;

        try{
            con = Conexion.conectar();
            con.setAutoCommit(false);
            
            try (PreparedStatement psU = con.prepareStatement(sqlUser, Statement.RETURN_GENERATED_KEYS)) {
                psU.setInt(1, 2);
                psU.setString(2, nombreUser);
                psU.setString(3, r.getCorreo());
                psU.setString(4, r.getPassword());
                psU.executeUpdate();
            
            ResultSet rs = psU.getGeneratedKeys();
            if(rs.next()){
                int id_generado = rs.getInt(1);
                
                try(PreparedStatement psP = con.prepareStatement(sqlPerfil)){
                    psP.setInt(1, id_generado);
                    psP.setString(2, nombreUser);
                    psP.setString(3, r.getCorreo());
                    psP.setString(4, "0%");
                    psP.setString(5, "Principiante");
                    psP.setString(6, "No especificado");
                    psP.setString(7, "Ninguno");
                    psP.executeUpdate();
                }
            }
            }
            con.commit();
            return true;

        } catch (SQLException e) {
            // Ahora el catch sí puede acceder a 'con' para hacer el rollback
            if (con != null) {
                try {
                    con.rollback();
                    System.out.println("Registro fallido: Se realizó rollback");
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            e.printStackTrace();
        }
        finally {
            // Siempre cerramos la conexión al final
            try {
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;            
    }
}


