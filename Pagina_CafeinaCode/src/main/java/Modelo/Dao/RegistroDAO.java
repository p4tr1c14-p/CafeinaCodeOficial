package Modelo.Dao;

import Configuracion.Conexion;
import Modelos.Registro;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * RegistroDAO corregido para Cafeína Code
 */
public class RegistroDAO {

    public int registrarUsuario(Registro r, String nombreUser) throws SQLException {
        // SQL para la tabla usuario
        String sqlUser = "INSERT INTO usuario(rol, nombre_usuario, correo, contrasena) VALUES(?, ?, ?, ?)";
        
        // SQL para la tabla perfil ajustado al orden de las columnas NOT NULL (pais, nombre, correo, lenguajes_conocidos)
        String sqlPerfil = "INSERT INTO perfil(id_usuario, nombre, correo, pais, lenguajes_conocidos, progreso, nivel_del_curso) VALUES (?, ?, ?, ?, ?, ?, ?)";
        
        Connection con = null;
        int id_generado = -1;
        
        try {
            con = Conexion.conectar();
            con.setAutoCommit(false); // Iniciar transacción
            
            // 1. Insertar en la tabla 'usuario'
            try (PreparedStatement psU = con.prepareStatement(sqlUser, Statement.RETURN_GENERATED_KEYS)) {
                psU.setInt(1, 2); // Rol por defecto: Estudiante/Usuario
                psU.setString(2, nombreUser);
                psU.setString(3, r.getCorreo());
                psU.setString(4, r.getPassword());
                psU.executeUpdate();
                
                // Obtener el ID generado para el usuario
                ResultSet rs = psU.getGeneratedKeys();
                if (rs.next()) {
                    id_generado = rs.getInt(1);
                    
                    // 2. Insertar en la tabla 'perfil' usando el ID recién generado
                    try (PreparedStatement psP = con.prepareStatement(sqlPerfil)) {
                        psP.setInt(1, id_generado);      // id_usuario
                        psP.setString(2, nombreUser);    // nombre (NOT NULL)
                        psP.setString(3, r.getCorreo()); // correo (NOT NULL)
                        psP.setString(4, "México");      // pais (NOT NULL)
                        psP.setString(5, "Ninguno");     // lenguajes_conocidos (NOT NULL)
                        psP.setString(6, "0%");          // progreso
                        psP.setString(7, "Principiante");// nivel_del_curso
                        psP.executeUpdate();
                    }
                }
            }
            
            con.commit(); // Confirmar cambios en ambas tablas
            return id_generado;
            
        } catch (SQLException e) {
            if (con != null) {
                try {
                    con.rollback(); // Deshacer cambios si algo falla
                    System.out.println("LOG: Registro fallido, se realizó rollback.");
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            e.printStackTrace();
            return -1;
        } finally {
            try {
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}