/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelos;

/**
 *
 * @author Dell
 */
public class Challenges {
    private int id;
    private String codigo_respuesta;
    private String ejercicio_texto;
     private String resultado_ia;
      private String retroalimentacion;
      private String fecha;

    public Challenges(int id, String codigo_respuesta, String ejercicio_texto, String resultado_ia, String retroalimentacion, String fecha) {
        this.id = id;
        this.codigo_respuesta = codigo_respuesta;
        this.ejercicio_texto = ejercicio_texto;
        this.resultado_ia = resultado_ia;
        this.retroalimentacion = retroalimentacion;
        this.fecha = fecha;
    }

    public Challenges() {
    }

    public int getId() {
        return id;
    }

    public String getCodigo_respuesta() {
        return codigo_respuesta;
    }

    public String getEjercicio_texto() {
        return ejercicio_texto;
    }

    public String getResultado_ia() {
        return resultado_ia;
    }

    public String getRetroalimentacion() {
        return retroalimentacion;
    }

    public String getFecha() {
        return fecha;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setCodigo_respuesta(String codigo_respuesta) {
        this.codigo_respuesta = codigo_respuesta;
    }

    public void setEjercicio_texto(String ejercicio_texto) {
        this.ejercicio_texto = ejercicio_texto;
    }

    public void setResultado_ia(String resultado_ia) {
        this.resultado_ia = resultado_ia;
    }

    public void setRetroalimentacion(String retroalimentacion) {
        this.retroalimentacion = retroalimentacion;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
      
      
}
