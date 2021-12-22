package practica;

import java.util.Random;
import java.util.Scanner;

public class Pregunta1 {
    public static void main(String[] args) {
        System.out.println("/*********************************/");
        System.out.println("/*    P R E G U N T A   1        */");
        System.out.println("/*********************************/");
        int n = 0;
        Scanner sc = new Scanner(System.in);
        System.out.println("Ingresar la CANTIDAD de elementos ");
        n = sc.nextInt();

        System.out.println("Generando arreglo de N elementos ... " +"\n\n");
        int[] arreglo = generaAleatorios(n);
        System.out.println("El arreglo generado es ....");
        System.out.println(muestraArreglo(arreglo));

        System.out.println("El ultimo elemento es ...." + arreglo[arreglo.length-1] );
        System.out.println("La suma de mayores es ...." + sumaMayores(arreglo) );

        System.out.println("ORdenando ...." );
        int[] rpta = seleccionDirecta( arreglo );
        System.out.println(muestraArreglo(rpta));
    }

    /*
    GEnerar el arreglo de numeros aleatorios (Desordenados)
     */
    private static int[]  generaAleatorios(int n) {
        // Instanciamos la clase Random
        Random random = new Random();

        int arreglo[] = new int[n];

        for (int i=0; i < arreglo.length; i++) {
            // Supongamos que son aleatorios hasta 100
            arreglo[i] = random.nextInt(100);
        }

        return arreglo;
    }

    public static String muestraArreglo(int arreglo[])  {
        String cadena = "";

        for (int i=0; i < arreglo.length; i++) {
            cadena = cadena + arreglo[i] + " ";
        }
        return cadena;
    }

    private static int sumaMayores(int[] a ) {
        int suma = 0;
        int elem = a[a.length-1];

        for (int i=0; i < a.length-1; i++) {
            if ( a[i] > elem ) {
                System.out.println("Sumando a  .." + a[i]);
                suma = suma + a[i];
            }
        }

        return suma;
    }

    public static int[] seleccionDirecta(int[] a){
        int i, menor, k, j;
        for(i = 0; i < a.length-1; i++){
            menor = a[i];
            k=i;
            for( j=i+1; j < a.length; j++){
                /* DESC */
                if(a[j] > menor){
                    menor = a[j];
                    k = j;
                }
            }
            a[k] = a[i];
            a[i] = menor;
        }

        return a;
    }
}
