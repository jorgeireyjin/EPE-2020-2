package estruct.datos;

import java.util.Scanner;

public class Pregunta1 {
    public static void main(String[] args) {
        System.out.println("==================================");
        System.out.println("===== P R E G U N T A   1      ===");
        System.out.println("==================================");
        int n = 0;
        Scanner sc = new Scanner(System.in);
        System.out.println("Ingresar el valor de N");
        n = sc.nextInt();

        System.out.println("La serie hasta la posicion " + n + " es :");

        int numerador = 0;
        int denominador = 2;
        float total = 0;
        for (int i=1; i <=n ; i++) {
            numerador = i;
            total =  (total + (float)(numerador / Math.pow(denominador,i)));

        }
        System.out.println( "El resultado es : " + total);
    }
}
