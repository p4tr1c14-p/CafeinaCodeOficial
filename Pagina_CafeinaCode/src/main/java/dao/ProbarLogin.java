/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

public class ProbarLogin {
    public static void main(String[] args) {
        UsuarioDAO dao = new UsuarioDAO();
        
        // Estos datos deben coincidir exactamente con el INSERT que hiciste arriba
        String correoPrueba = "alberto@cafeina.com";
        String passPrueba = "12345";
        
        if (dao.validar(correoPrueba, passPrueba)) {
            System.out.println("PRUEBA DE LOGIN EXITOSA! El usuario existe.");
        } else {
            System.out.println("No se encontró el usuario. Revisa los datos o la columna 'passsword'.");
        }
    }
}
