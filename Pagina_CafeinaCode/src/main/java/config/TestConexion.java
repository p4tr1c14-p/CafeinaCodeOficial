/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;

import java.sql.Connection;

public class TestConexion {
    public static void main(String[] args) {
        Connection con = Conexion.getConnection();
        
        if (con != null) {
            System.out.println("CONEXIÓN EXITOSA CON CAFEINA_CODE!");
            try {
                con.close(); // Siempre es bueno cerrar la conexión de prueba
            } catch (Exception e) {}
        } else {
            System.err.println("No se pudo conectar. Revisa tu contraseña o el puerto.");
        }
    }
}
