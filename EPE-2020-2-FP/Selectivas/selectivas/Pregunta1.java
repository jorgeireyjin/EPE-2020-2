package selectivas;

import java.util.Scanner;

public class Pregunta1 {
    public static void main(String[] args) {
        System.out.println("==================================");
        System.out.println("===== P R E G U N T A   1      ===");
        System.out.println("==================================");

        Scanner sc = new Scanner(System.in);

        System.out.println("Ingresar la cantidad de piezas :");
        int c = sc.nextInt();
        System.out.println("Ingresar el precio Unitario :");
        float p = sc.nextFloat();

        System.out.println("El monto del credito incluido intereses es : " + montoTotalCredito(c,p) );
    }

    // dado el número de piezas y el precio unitario de la pieza, calcule el monto de inversión de
    // su propio dinero.
    private static  float montoInversion(int piezas, float precio) {
        float total = precio*piezas;
        float inversion = 0;
        if ( total > 500000 ) {
            inversion = total*0.55F;
        } else {
            inversion = total*0.7F;
        }
        return inversion;
    }

    // dado el número de piezas y el precio unitario de la pieza, calcule el monto de préstamo otorgado
    // por el banco.
    private static float montoPrestamo(int piezas, float precio) {
        float total = precio*piezas;
        float prestamo = 0;
        if ( total > 500000 ) {
            prestamo = total*0.30F;
        }
        return prestamo;
    }
    // dado el número de piezas y el precio unitario de la pieza, calcule el monto de crédito otorgado
    // por el fabricante sin incluir el interés.
    private static float montoCredito(int piezas, float precio) {
        return piezas*precio;
    }

    // dado el número de piezas y el precio unitario de la pieza, calcule el monto total del crédito.
    // Dentro del método, utilizar los 3 métodos implementados en los puntos a, b y c.
    // Debe incluir el interés que ofrece el fabricante.
    private static float montoTotalCredito(int piezas, float precio) {
        float inversion = montoInversion(piezas, precio);
        float prestamo = montoPrestamo(piezas, precio);
        float credito = montoCredito(piezas, precio) - inversion - prestamo;

        float totalCredito = 0;
        if ( credito > 0 ) {
            totalCredito = credito * 1.2F;
        }

        return totalCredito;
    }

}
