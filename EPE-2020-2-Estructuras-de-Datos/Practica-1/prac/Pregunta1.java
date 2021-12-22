package prac;

import java.util.Scanner;

public class Pregunta1 {
    public static void main(String[] args) {
        System.out.println("==================================");
        System.out.println("===== P R E G U N T A   1      ===");
        System.out.println("==================================");
        double monto = 0;
        String rubro = "";

        double dcto = 0;
        double isc = 0;

        Scanner sc = new Scanner(System.in);
        System.out.println("Ingresar el Rubro comprado :");
        rubro = sc.nextLine();
        System.out.println("Ingresar el monto comprado :");
        monto = sc.nextDouble();


        // Calculo del dcto
        if (monto >= 0 && monto <= 150) {
            dcto = 0;
        } else if (monto >= 151 && monto <= 300) {
            dcto = 0.07;
        } else if (monto >= 301) {
            dcto = 0.12;
        }

        // Impuesto
        rubro = rubro.toUpperCase();
        switch (rubro) {
            case "LICORES":
                isc = 0.25;
                break;
            case "COMESTIBLES":
                isc = 0.18;
                break;
        }

        // IMpuesto a pagar
        double subtotal = monto - monto * dcto;
        double impuesto = subtotal * isc;
        System.out.println("El impuesto a pagar es " + impuesto);
        double endolares = (subtotal + impuesto) / 3.50;
        System.out.println("El monto a pagar en US$ es " + endolares);
    }
}
