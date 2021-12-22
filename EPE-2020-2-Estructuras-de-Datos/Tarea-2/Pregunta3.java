package estruct.datos;

import java.util.Scanner;

public class Pregunta3 {

    public static void main(String[] args) {
        System.out.println("==================================");
        System.out.println("===== P R E G U N T A   3      ===");
        System.out.println("==================================");
        int n = 0;
        Scanner sc = new Scanner(System.in);
        System.out.println("Ingresar el valor de N");
        n = sc.nextInt();
        System.out.println("La serie hasta la posicion " + n + " es :");

        int total = 0;
        for (int i=0; i<n; i++) {
            total = total + i;
            System.out.print( total + " - ");
        }
    }
}
