package Modelo.Dao;

import Configuracion.Conexion;
import Modelos.Lecciones;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class LeccionesDAO {

    public void insertar(Lecciones l) {
        Connection con = Conexion.conectar();
        String sql = "INSERT INTO lecciones (nombre_leccion,descripcion) VALUES (?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, l.getNombre_leccion());
            ps.setString(2, l.getDescripcion());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Lecciones> listar() {
        List<Lecciones> lista = new ArrayList<>();
        String sql = "SELECT * FROM lecciones";
        try (Connection con = Conexion.conectar();
             Statement st = con.createStatement();
             ResultSet rs = st.executeQuery(sql)) {
            while (rs.next()) {
                Lecciones l = new Lecciones();
                l.setId(rs.getInt("id_lecciones"));
                l.setNombre_leccion(rs.getString("nombre_leccion"));
                l.setDescripcion(rs.getString("descripcion"));
                lista.add(l);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }

    public Lecciones obtenerPorId(int id) {
        Lecciones l = null;
        String sql = "SELECT * FROM lecciones WHERE id=?";
        try (Connection con = Conexion.conectar();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                l = new Lecciones();
                l.setId(rs.getInt("id"));
                l.setNombre_leccion(rs.getString("nombre_leccion"));
                l.setDescripcion(rs.getString("descripcion"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return l;
    }

    public void actualizar(Lecciones l) {
        String sql = "UPDATE lecciones SET nombre_leccion=?, descripcion=? WHERE id_lecciones=?";
        try (Connection con = Conexion.conectar();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, l.getNombre_leccion());
            ps.setString(2, l.getDescripcion());
            ps.setInt(3, l.getId());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void eliminar(int id) {
        String sql = "DELETE FROM lecciones WHERE id_lecciones=?";
        try (Connection con = Conexion.conectar();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void actualizarRacha(int idUsuario) {
        String sql = "UPDATE mascota SET racha = racha + 1, ultima_racha = CURDATE() " +
                     "WHERE id_mascota = ? AND (ultima_racha IS NULL OR ultima_racha < CURDATE())";
        try (Connection con = Conexion.conectar();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, idUsuario);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}