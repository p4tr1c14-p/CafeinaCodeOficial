/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import config.Conexion;
import java.sql.*;

public class UsuarioDAO {
    public boolean validar(String email, String pass) {
        String sql = "SELECT * FROM usuario WHERE correo = ? AND passsword = ?";
        try (Connection con = Conexion.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            
            ps.setString(1, email);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            
            return rs.next(); // Retorna true si los datos coinciden
        } catch (SQLException e) {
            return false;
        }
    }
}
