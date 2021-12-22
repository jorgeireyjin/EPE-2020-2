package prac;

import java.util.Scanner;

public class Pregunta2 {
    public static void main(String[] args) {
        System.out.println("==================================");
        System.out.println("===== P R E G U N T A   2      ===");
        System.out.println("==================================");
        double monto = 0;
        int meses = 0;

        Scanner sc = new Scanner(System.in);
        System.out.println("Ingresar el Monto a depositar :");
        monto = sc.nextDouble();
        System.out.println("Ingresar la cantidad de meses :");
        meses = sc.nextInt();

        double interes = 0;
        double total = monto;
        for (int i=1; i <= meses; i++) {
            interes = total * 0.005;
            total = total + interes;
        }

        System.out.println("El interes del ultimo mes es " + interes);
        System.out.println("El monto total a recibir es " + total);

    }


}
