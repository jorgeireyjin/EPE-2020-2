package tarea1;

import java.lang.reflect.GenericDeclaration;
import java.util.Scanner;

public class Pregunta3 {
    public static void main(String[] args) {
        System.out.println("==================================");
        System.out.println("===== P R E G U N T A   3      ===");
        System.out.println("==================================");

        System.out.println("Los datos estan en DURO ..");
        String marca = "Burroughs";
        double precio = 100;
        double dcto = 0;
        int cantidad = 100;

        switch (marca) {
            case "3M":
                dcto = 0.10;
                break;
            case "NCR":
                dcto = 0.15;
                break;
            case "Sentinel":
                dcto = 0.20;
                break;
            case "Burroughs":
                dcto = 0.25;
                break;
            case "Goldstar":
                dcto = 0.30;
                break;
        }

        double total = precio*cantidad;
        System.out.println("Importe Bruto = S/" + total);
        System.out.println("Descuento     = S/" + total*dcto );
        System.out.println("Monto a pagar = S/" + total*(1-dcto) );
    }
}
