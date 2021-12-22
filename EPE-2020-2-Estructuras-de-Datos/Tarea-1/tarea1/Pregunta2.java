package tarea1;

import java.util.Scanner;

public class Pregunta2 {
    public static void main(String[] args) {
        System.out.println("==================================");
        System.out.println("===== P R E G U N T A   2      ===");
        System.out.println("==================================");
        double ventas = 0;
        double total = 0;
        double comision = 0.09;
        Scanner sc = new Scanner(System.in);
        System.out.println("Ingresar las ventas de la semana :");
        ventas = sc.nextDouble();

        System.out.println("Usted vendio S/ " + ventas );
        total = 200 + ventas*comision;
        System.out.println("La ganancias de la semana es : " + total);


    }
}
