package tarea4;

import java.util.Random;
import java.util.Scanner;

public class Pregunta2 {
    public static void main(String[] args) {
        System.out.println("/*********************************/");
        System.out.println("/*    P R E G U N T A   2        */");
        System.out.println("/*********************************/");
        int n = 0;
        Scanner sc = new Scanner(System.in);
        System.out.println("Ingresar la CANTIDAD elementos");
        n = sc.nextInt();

        System.out.println("Generando arreglo de N numeros ... " + "\n\n");
        int[] arreglo = generaAleatorios(n);
        System.out.println( muestraArreglo(arreglo));

        System.out.println("Verificando que ..." + estaOrdenado(arreglo) );

        System.out.println("Ingresar el codigo a buscar ...");
        n = sc.nextInt();
        System.out.println( buscar(arreglo, n) );

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


    private static String buscar(int[] a, int n ) {
        boolean encontro = false;
        boolean duplicado = false;
        String rpta = "No se encontro el codigo " + n;

        for ( int i=0; i < a.length; i++ ) {
            if ( a[i] == n ) {
                encontro = true;
            }
            if ( i+1 != a.length && a[i] == a[i+1] ) {
                duplicado = true;
            }
            if ( encontro == true ) {
                rpta = "Se encontro el codigo " + n;
                if ( duplicado == true ) {
                    rpta = rpta + " y esta repetido";
                }
                break;
            }
        }
        return rpta;

    }


}
