package tarea1;

import java.util.Scanner;

public class Pregunta1 {
    public static void main(String[] args) {
        System.out.println("==================================");
        System.out.println("===== P R E G U N T A   1      ===");
        System.out.println("==================================");
        double cantidad = 0;
        int nrollos500 = 0;
        int nrollos300 = 0;
        int nrollos75 = 0;

        Scanner sc = new Scanner(System.in);
        System.out.println("Ingresar la cantidad (pies) de alambre que necesita :");
        cantidad = sc.nextDouble();

        // Cantidad de rollos de 500
        while ( cantidad >= 500 ) {
            cantidad = cantidad - 500;
            nrollos500 = nrollos500 + 1;
        }

        // Cantidad de rollos de 300
        while ( cantidad >= 300 ) {
            cantidad = cantidad - 300;
            nrollos300 = nrollos300 + 1;
        }

        // Cantidad de rollos de 75
        while ( cantidad >= 75 ) {
            cantidad = cantidad - 75;
            nrollos75 = nrollos75 + 1;
        }

        System.out.println("Se requieren " + nrollos500 + " rollo(s) de 500 pies");
        System.out.println("Se requieren " + nrollos300 + " rollo(s) de 300 pies");
        System.out.println("Se requieren " + nrollos75  + " rollo(s) de 75 pies");

        if ( cantidad > 0 ) {
            System.out.println("Faltan " + (75 - cantidad) + " pies para completar el ultimo rollo");
        } else {
            System.out.println("No hay faltantes para completar el ultimo rollo");
        }
    }
}
