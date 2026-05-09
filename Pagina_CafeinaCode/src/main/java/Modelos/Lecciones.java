/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelos;

/**
 *
 * @author cdiaz
 */
public class Lecciones {
    private int id;
    private String nombre_leccion;
    private String descripcion;

    public Lecciones(int id, String nombre_leccion, String descripcion) {
        this.id = id;
        this.nombre_leccion = nombre_leccion;
        this.descripcion= descripcion;
    }

    public Lecciones() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre_leccion() {
        return nombre_leccion;
    }

    public void setNombre_leccion(String nombre_leccion) {
        this.nombre_leccion = nombre_leccion;
    }
    
    public String getDescripcion(){
        return descripcion;
    }
    
    public void setDescripcion(String descripcion){
        this.descripcion = descripcion;
    }    
}