package secuenciales;

import java.util.Scanner;

public class Pregunta1 {
    public static void main(String[] args) {
        System.out.println("==================================");
        System.out.println("===== P R E G U N T A   1      ===");
        System.out.println("==================================");

        Scanner sc = new Scanner(System.in);

        System.out.println("Ingresar los grados Farenheit :");
        float f = sc.nextFloat();

        float celsius = ( ( f - 32) * 5 )/ 9;

        System.out.println("Los grados Celsius son : " + celsius);

    }


}
