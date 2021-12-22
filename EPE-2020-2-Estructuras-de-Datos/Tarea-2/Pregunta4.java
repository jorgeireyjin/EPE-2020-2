package estruct.datos;

import java.util.Scanner;

public class Pregunta4 {

    public static void main( String[] args ) {
        System.out.println("==================================");
        System.out.println("===== P R E G U N T A   4      ===");
        System.out.println("==================================");
        int n = 0;
        Scanner sc = new Scanner(System.in);
        System.out.println("Ingresar el valor de N");
        n = sc.nextInt();
        System.out.println("Los divisores de " + n + " son :");
        // Vamos en reversa desde N hasta 1
        for (int i=n; i>0; i--) {
            if (n % i == 0) {
                System.out.println(i);
            }
        }
    }

}
