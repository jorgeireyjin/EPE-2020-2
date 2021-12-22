package estruct.datos;

import java.util.Scanner;

public class Pregunta2 {
    public static void main(String[] args) {
        System.out.println("==================================");
        System.out.println("===== P R E G U N T A   2      ===");
        System.out.println("==================================");
        int n = 0;
        int x = 0;
        Scanner sc = new Scanner(System.in);
        System.out.println("Ingresar el valor de N");
        n = sc.nextInt();
        System.out.println("Ingresar el valor de X");
        x = sc.nextInt();
        System.out.println("La serie hasta la posicion " + n + " es :");

        int total = 0;
        for (int i=0; i <=n; i++ ) {
            total = total + (int)Math.pow(x, i);
        }
        System.out.println("El total es : " + total);
    }
}
