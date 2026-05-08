/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelos;

/**
 *
 * @author alber
 */
public class Registro {
    private int Id;
    private String correo;
    private String password;
    
    public Registro(){
    }
    
    public Registro(int Id, String correo, String password){
        this.Id = Id;
        this.correo = correo;
        this.password = password;
    }
    
    public int getId(){
        return Id;
    }
    public void setId(int Id){
        this.Id = Id;
    }
    
    public String getCorreo(){
        return correo;
    }
    public void setCorreo(String correo){
        this.correo = correo;
    }
    
    public String getPassword(){
        return password;
    }
    public void setPassword(String password){
        this.password = password;
    }
}
