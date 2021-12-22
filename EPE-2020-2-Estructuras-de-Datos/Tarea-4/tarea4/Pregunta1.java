package tarea4;

import java.util.Random;
import java.util.Scanner;

public class Pregunta1 {

    public static void main(String[] args) {
        System.out.println("/*********************************/");
        System.out.println("/*    P R E G U N T A   1        */");
        System.out.println("/*********************************/");
        int n = 0;
        Scanner sc = new Scanner(System.in);
        System.out.println("Ingresar la CANTIDAD de elementos a ordenar");
        n = sc.nextInt();

        System.out.println("Generando arreglo de N elementos ... " +"\n\n");
        int[] arreglo = generaAleatorios(n);
        System.out.println("El arreglo generado es ....");
        System.out.println(muestraArreglo(arreglo));
        System.out.println("¿ Esta ordenado ? " + estaOrdenado(arreglo) +"\n\n" );

        System.out.println("El arreglo Ordenado ASC es ....");
        int[] a1 = ordenaAscendente(arreglo);
        System.out.println(muestraArreglo(a1));
        System.out.println("¿ Esta ordenado ? " + estaOrdenado(a1) +"\n\n" );

        System.out.println("El arreglo Ordenado DESC es ....");
        int[] a2 = ordenaDescendente(arreglo);
        System.out.println(muestraArreglo(a2));
        System.out.println("¿ Esta ordenado ? " + estaOrdenado(a2) );
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

    /*
    Para saber si estan ordenados ...habria que ver las dos
    posibilidades ASC y DESC
     */
    private static boolean estaOrdenado(int[] a) {
        boolean ordenado = false;
        /*
        Esta no es la forma mas optima pero ...
         */

        String cadenaOriginal = muestraArreglo(a);
        String cadenaASC = muestraArreglo( ordenaAscendente(a) );
        String cadenaDESC = muestraArreglo( ordenaDescendente(a) );

        if ( cadenaOriginal.equals(cadenaASC) || cadenaOriginal.equals(cadenaDESC ) ) {
            ordenado = true;
        }

        return ordenado;
    }

    private static int[] ordenaAscendente(int[] a) {
        int tmp;
        int indMax = a.length;

        for (int i = 1; i < indMax; i++) {
            for (int k = indMax-1; k >= i; k--) {
                if( a[k] < a[k-1]) {
                    tmp = a[k];
                    a[k] = a[k-1];
                    a[k-1] =  tmp;
                }
            }
        }
        return a;
    }

    private static int[] ordenaDescendente(int[] a) {
        int tmp;
        int indMax = a.length;

        for (int i = 1; i < indMax; i++) {
            for (int k = indMax-1; k >= i; k--) {
                if( a[k] > a[k-1]) {
                    tmp = a[k];
                    a[k] = a[k-1];
                    a[k-1] =  tmp;
                }
            }
        }
        return a;
    }

    public static String muestraArreglo(int arreglo[])  {
        String cadena = "";

        for (int i=0; i < arreglo.length; i++) {
            cadena = cadena + arreglo[i] + " ";
        }
        return cadena;
    }

}
