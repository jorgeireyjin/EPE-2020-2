package secuenciales;

import java.util.Scanner;

public class Pregunta2 {
    public static void main(String[] args) {
        System.out.println("==================================");
        System.out.println("===== P R E G U N T A   2      ===");
        System.out.println("==================================");

        Scanner sc = new Scanner(System.in);

        String o = "X";
        float total = 0;
        int bebidaLeche = 0;
        int sangTipo2 = 0;

        while (!o.equals("9")) {
            System.out.println("Ingresar pedido (Digite el numero) :");
            System.out.println("1. Bebidas 2.50");
            System.out.println("2. Bebidas con LEche  3.40");
            System.out.println("3. Sanguches Tipo 1 2.50");
            System.out.println("4. Sanguches Tipo 2 3.40");
            System.out.println("9. Terminar Pedido");
            o = sc.nextLine();

            switch ( o ) {
                case "1":
                    System.out.println("Solicitando Bebida");
                    total = total + 2.5F;
                    break;
                case "2":
                    System.out.println("Solicitando Bebida con Leche");
                    bebidaLeche = bebidaLeche + 1;
                    if ( bebidaLeche % 2 == 0 ) {
                        total = total + 1.7F;
                    } else {
                        total = total + 3.4F;
                    }
                    break;
                case "3":
                    System.out.println("Solicitando Sanguche Tipo 1");
                    total = total + 2.5F;
                    break;
                case "4":
                    System.out.println("Solicitando Sanguche Tipo 2");
                    sangTipo2 = sangTipo2 + 1;
                    break;

            }

        }

        if ( sangTipo2 % 2 == 0) {
            total = total + (sangTipo2 / 2 ) * 6.5F;
        } else {
            total = total + sangTipo2 * 3.4F;
        }

        System.out.println( "Total del pedido es : " + total );
    }

}
