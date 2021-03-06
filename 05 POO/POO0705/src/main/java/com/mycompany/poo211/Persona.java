package com.mycompany.poo211;

/**
 *
 * @author Juan
 */
public class Persona {

    //caracter. o ATRIBUTOS
    private String genero;
    private String nombre;
    private byte edad;

    //comportamientos METODOS
    
    //constructores
    
    public Persona() {
    }

    public Persona(String nombre, String gen, byte edad) {
      this.nombre=nombre;
      this.genero=gen;
      this.edad=edad;
    }
    
    public Persona(String nombre) {
      this.nombre=nombre;
      this.genero="no informado";
      this.edad=(byte)(-1);
    }
    
    
    //setter getter
    public String getGenero() {
        return genero;
    }

    public void setGenero(String nvoGenero) {
        this.genero = nvoGenero;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public byte getEdad() {
        return edad;
    }

    public void setEdad(byte edad) {
        this.edad = edad;
    }
    
    
    public void saludar(){
        System.out.println("Hola! Buen día, mi nombre es "+nombre);
    }
  
}
