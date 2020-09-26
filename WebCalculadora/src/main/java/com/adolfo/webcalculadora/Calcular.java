package com.adolfo.webcalculadora;

/**
 *
 * @author hectoradolfo
 */
public class Calcular {
    
    //declaracion de variables
    private double suma;
    private double producto;
    private double mayor;
    private double potencia;
    private String bin1;
    private String bin2;
    private double valor1;
    private double valor2;
    
    /**
     * metodo que realiza las operaciones solicitas 
     * segun los parametros recibidos
     * @param n1
     * @param n2
     * @param sum
     * @param prd
     * @param may
     * @param pt
     * @param bn
     */
    public void realizarOperacion(String n1, String n2, String sum, String prd, 
            String may, String pt, String bn){
        try {
            this.valor1 = Double.parseDouble(n1);
            this.valor2 = Double.parseDouble(n2);
            
            if (sum != null) { //si se pide una suma
                this.suma = valor1 + valor2;
                
            } 
            
            if (prd != null){ //si se pide una multiplicacion
                this.producto = valor1 * valor2;
                
            } 
            
            if (may != null){ //si se pide saber el numero mayor de los dos ingresados
                if (valor1 > valor2) {
                    this.mayor = valor1;
                } else {
                    this.mayor = valor2;
                }              
            } 
            
            if (pt != null){ //si se pide calcular una potencia
                this.potencia = Math.pow(valor1, valor2);                
            }
            
            if (bn != null){ //si se pide los valores binario 
               this.bin1 = Long.toBinaryString((long) valor1);
               this.bin2 = Long.toBinaryString((long) valor2);
            }
            
        } catch (NumberFormatException e) { //captura un error 
            System.err.println("Error en el programa\n" + e);
        }
    }

    /**
     * @return the suma
     */
    public double getSuma() {
        return suma;
    }

    /**
     * @return the producto
     */
    public double getProducto() {
        return producto;
    }

    /**
     * @return the mayor
     */
    public double getMayor() {
        return mayor;
    }

    /**
     * @return the potencia
     */
    public double getPotencia() {
        return potencia;
    }

    /**
     * @return the bin1
     */
    public String getBin1() {
        return bin1;
    }

    /**
     * @return the bin2
     */
    public String getBin2() {
        return bin2;
    }

    /**
     * @return the valor1
     */
    public double getN1() {
        return valor1;
    }

    /**
     * @return the valor2
     */
    public double getN2() {
        return valor2;
    }
    
}
