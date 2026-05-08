/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelos;

/**
 *
 * @author alber
 */
public class Perfil {
    private int id_perfil;
    private int id_usuario;
    private int id_challenges;
    private int id_mascota;
    private int id_lecciones;
    private String pais;
    private String nombre;
    private String correo;
    private String redes_sociales;
    private String sobre_mi;
    private String logros_obtenidos;
    private String progreso;
    private String lenguajes_conocidos;
    private String nivel_del_curso;
    
    
    public Perfil(){
    }
    
    public Perfil(int id_perfil, int id_usuario, int id_challenges, int id_mascota, int id_lecciones, String pais, String nombre, String correo, String redes_sociales,
            String sobre_mi, String logros_obtenidos, String progreso, String lenguajes_conocidos, String nivel_del_curso){
        
        this.id_perfil = id_perfil;
        this.id_usuario = id_usuario;
        this.id_challenges = id_challenges;
        this.id_mascota = id_mascota;
        this.id_lecciones = id_lecciones;
        this.pais = pais;
        this.nombre = nombre;
        this.correo = correo;
        this.redes_sociales = redes_sociales;
        this.sobre_mi = sobre_mi;
        this.logros_obtenidos = logros_obtenidos;
        this.progreso = progreso;
        this.lenguajes_conocidos = lenguajes_conocidos;
        this.nivel_del_curso = nivel_del_curso;
    }
    
    public int getId_perfil(){
        return id_perfil;
    }
    public void setId_perfil(int id_perfil){
        this.id_perfil = id_perfil;
    }
    
    public int getId_usuairio(){
        return id_usuario;
    }
    public void setId_usuario(int id_usuario){
        this.id_usuario = id_usuario;
    }
    
    public int getId_challenges(){
        return id_challenges;
    }
    public void setId_challenges(int id_challenges){
        this.id_challenges = id_challenges;
    }
    
    public int getId_mascota(){
        return id_mascota;
    }
    public void setId_mascota(int id_mascota){
        this.id_mascota = id_mascota;
    }
    
    public int getId_lecciones(){
        return id_lecciones;
    }
    public void setId_lecciones(int id_lecciones){
        this.id_lecciones = id_lecciones;
    }
    
    public String getPais(){
        return pais;
    }
    public void setPais(String pais){
        this.pais = pais;
    }
    
    public String getNombre(){
        return nombre;
    }
    public void setNombre(String nombre){
        this.nombre = nombre;
    }
    
    public String getCorreo(){
        return correo;
    }
    public void setCorreo(String correo){
        this.correo = correo;
    }
    
    public String getRedes_sociales(){
        return redes_sociales;
    }
    public void setRedes_sociales(String redes_sociales){
        this.redes_sociales = redes_sociales;
    }
    
    public String getSobre_mi(){
        return sobre_mi;
    }
    public void setSobre_mi(String sobre_mi){
        this.sobre_mi = sobre_mi;
    }
    
    public String getLogros_obtenidos(){
        return logros_obtenidos;
    }
    public void setLogros_obtenidos(String logros_obtenidos){
        this.logros_obtenidos = logros_obtenidos;
    }
    
    public String getProgreso(){
        return progreso;
    }
    public void setProgreso(String progreso){
        this.progreso = progreso;
    }
    
    public String getLenguajes_conocidos(){
        return lenguajes_conocidos;
    }
    public void setLenguajes_conocidos(String lenguajes_conocidos){
        this.lenguajes_conocidos = lenguajes_conocidos;
    }
    
    public String getNivel_del_curso(){
        return nivel_del_curso;
    }
    public void setNivel_del_curso(String nivel_del_curso){
        this.nivel_del_curso = nivel_del_curso;
    }
    
}
