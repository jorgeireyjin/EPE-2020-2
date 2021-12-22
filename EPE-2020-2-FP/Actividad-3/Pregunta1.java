package fp20202b.a3;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Pregunta1 {

    public static void main(String[] args) {
        System.out.println("/*********************************/");
        System.out.println("/*    P R E G U N T A   1        */");
        System.out.println("/*********************************/");

        Scanner sc = new Scanner(System.in);
        int edad = 0;
        String resultado, sexo = "";
        List<Integer> ledad = new ArrayList<Integer>();
        List<String> lresultado = new ArrayList<String>();
        List<String> lsexo = new ArrayList<String>();

        while ( true ) {
            System.out.println("Ingresar Resultado:  Positivo(P)/Negativo(N)/Salir(X)");
            resultado = sc.nextLine();

            if (  resultado.equalsIgnoreCase("X") ) {
                break;
            }

            System.out.println("Ingresar Genero:  Masculino(M) / Femenino(F)");
            sexo = sc.nextLine();

            System.out.println("Ingresar Edad: ");
            edad = sc.nextInt();
            sc.nextLine();

            lresultado.add(resultado.toUpperCase());
            ledad.add(edad);
            lsexo.add(sexo.toUpperCase());
        }

        // PAra formatear
        DecimalFormat formateador = new DecimalFormat("##.00");

        System.out.println("El promedio de edad de las personas es:");
        List<Float> rpta_a = calcularPromedioEdad(lresultado, ledad);
        System.out.println("Positivo: " + formateador.format(rpta_a.get(0)) );
        System.out.println("Negativo: " + formateador.format(rpta_a.get(1)) );

        System.out.println("\n\n\n\n");
        System.out.println("Porcentaje de Mujeres mayorde de 50 y Positivo es:");
        System.out.println( calcularPorcentajeMujeres(lresultado, ledad, lsexo )  + "%");

        System.out.println("\n\n\n\n");
        List<Float> rpta_b = calcularPorcentajePruebas(lresultado);
        System.out.println("Porcentajes :");
        System.out.println( "Positivos : " +  formateador.format(rpta_b.get(0)  ) + " %");
        System.out.println( "NEgativos : " +  formateador.format(rpta_b.get(1) )  + " % ");
    }

    /*
    El promedio de edad (con dos decimales) de las personas que dieron Positivo (P)
    y de las que dieron Negativo (N).
    */
    private static List<Float> calcularPromedioEdad( List<String> resultado, List<Integer> edad) {
        int suma_pos = 0, cant_pos = 0;
        int suma_neg = 0, cant_neg = 0;

        for (int i=0; i < resultado.size(); i++ ) {
            if ( resultado.get(i).equalsIgnoreCase("P")) {
                suma_pos = suma_pos + edad.get(i);
                cant_pos = cant_pos + 1;
            } else {
                suma_neg = suma_neg + edad.get(i);
                cant_neg = cant_neg + 1;
            }
        }
        List<Float> rpta = new ArrayList<>();
        rpta.add( (float)suma_pos / cant_pos);
        rpta.add( (float)suma_neg / cant_neg);
        return rpta;
    }

    /*
    El porcentaje de Mujeres mayores a 50 años que dieron Positivo (P) con 2 decimales.
    */
    private static float calcularPorcentajeMujeres( List<String> resultado, List<Integer> edad, List<String> sexo) {
        int cant = 0;

        for (int i=0; i < resultado.size(); i++ ) {
            if ( sexo.get(i).equalsIgnoreCase("F") &&
                    edad.get(i) > 50 &&
                    resultado.get(i).equalsIgnoreCase(("P"))) {
                cant  = cant + 1;
            }
        }

        return (float) (cant*100.0/ resultado.size());
    }

    /*
    Del total de pruebas realizadas, indique el porcentaje que dieron Positivo (P)
    y el porcentaje que dieron Negativo (N).
    */
    private static List<Float> calcularPorcentajePruebas( List<String> resultado) {
        int cant_pos = 0;
        int cant_neg = 0;

        for (int i=0; i < resultado.size(); i++ ) {
            if ( resultado.get(i).equalsIgnoreCase("P" ) ) {
                cant_pos = cant_pos + 1;
            } else {
                cant_neg = cant_neg + 1;
            }
        }

        List<Float> rpta = new ArrayList<>();
        rpta.add( (float) (cant_pos*100.0/  resultado.size() ) );
        rpta.add( (float) (cant_neg*100.0/  resultado.size() ) );
        return rpta;
    }

}
