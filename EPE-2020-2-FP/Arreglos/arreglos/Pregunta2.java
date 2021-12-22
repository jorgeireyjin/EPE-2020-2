package arreglos;

import java.util.HashSet;
import java.util.Set;

public class Pregunta2 {
    public static void main(String[] args) {
        System.out.println("==================================");
        System.out.println("===== P R E G U N T A   2     ===");
        System.out.println("==================================");

        String[] libros = {
                "Libro-1",
                "Libro-2",
                "Libro-3",
                "Libro-1",
                "Libro-2",
                "Libro-4",
                "Libro-5",
                "Libro-2"
        };

        String[] dni = {
                "46531738",
                "46465223",
                "46539966",
                "46465223",
                "46539966",
                "46539966",
                "46538969",
                "46465223"
        };

        System.out.println("La cantidad de prestamos que hizo el dni 46539966");
        System.out.println( cantidadPRestamos(dni,"46539966") );
        System.out.println();
        System.out.println("La cantidad de prestamos que hizo el dni 46465223 para el libro Libro-2");
        System.out.println( cantidadPRestamosLibro(dni, libros,"46465223","Libro-2") );
        System.out.println();
        System.out.println("El DNI 46465223 puede pedir el libro Libro-2");
        System.out.println( verificarPRestamos(dni, libros,"46465223","Libro-2") );
        System.out.println();
        System.out.println("La cantidad de usuarios unicos es ");
        System.out.println( cantidadUsuariosUnicos(dni) );
        System.out.println();
    }

    /*
    a) Dado un número de DNI determinar cuántos prestamos realizó dicho usuario en total
    */
    private static int cantidadPRestamos(String[] dni , String cod){
        int veces = 0;
        for (int i=0; i <= dni.length-1; i++) {
            if ( dni[i].equalsIgnoreCase(cod)) {
                veces = veces + 1;
            }
        }

        return veces;
    }
    /*
    b) Dado un número de DNI y un código de libro determinar cuántos prestamos de dicho libro realizó dicho usuario.
     */
    private static int cantidadPRestamosLibro(String[] dni , String[] libros, String usr, String libro){
        int veces = 0;
        for (int i=0; i <= dni.length-1; i++) {
            if ( dni[i].equalsIgnoreCase(usr)) {
                if ( libros[i].equalsIgnoreCase(libro)) {
                    veces = veces + 1;
                }

            }
        }

        return veces;
    }
    /*
    c) Dado un número de DNI y un código de libro determinar si la persona está habilitada
    para solicitar un préstamos o no.
    Tomando en cuenta que no puede solicitar un préstamo para un libro que ya solicitó 2 veces anteriormente.
    */
    private static boolean verificarPRestamos(String[] dnis , String[] libros, String dni, String libro) {
        int veces = cantidadPRestamosLibro(dnis, libros, dni, libro);
        if ( veces >= 2) {
            return false;
        } else {
            return true;
        }
    }

    /*
    d) Indicar cuantos usuarios únicos tiene la librería.
    */
    private static int cantidadUsuariosUnicos(String[] dni) {
        Set<String> s = new HashSet<>();

        for (int i=0; i < dni.length-1; i++) {
            s.add( dni[i] );
        }

        return s.size();
    }
}
