package tarea3;

import java.util.Stack;

public class Pregunta3 {
    public static void main(String[] args) {
        String cadenaA = "a + b * c ^ d / g – h * i / j ^ k ^ ( m * n + i ) – p * q";
        String cadenaB = "a * ( b ^ c * d + e ) + f ^ g + ( h / i * j – k + l ) / ( m + n * o )";

        convierte(cadenaA);
        convierte(cadenaB);
    }
/*
    1. Inicializar la pila
    2. Definir la prioridad del conjunto de operaciones
    3. Mientras no ocurra error y no sea fin de la expresión infija hacer
         Si el carácter es:
            - PARENTESIS IZQUIERDO. Colocarlo en la pila
            - PARENTESIS DERECHO.
                  Extraer y desplegar los valores hasta encontrar paréntesis izquierdo. Pero NO desplegarlo.
            - OPERADOR
                  - Si la pila esta vacía o el operador tiene más alta prioridad que el operador del tope de la pila
                    insertar el operador en la pila.
                  - En caso contrario extraer y desplegar el elemento del tope de la pila y repetir la comparación
                    con el nuevo tope.
            - OPERANDO
                    Desplegarlo
    4. Al final de la expresión extraer y desplegar los elementos de la pila hasta que quede vacía.
 */
    private static void convierte(String cadena) {

        String cadenaLimpia = limpiarCadena(cadena);
        String[] arrayInfix = cadenaLimpia.split(" ");

        Stack<String> entrada = new Stack <String>(); //Pila entrada
        Stack<String> tmp     = new Stack <String>(); //Pila para operadores
        Stack<String> salida  = new Stack <String>(); //Pila de resultados

        //Agregar al stack desde la derecha hacia la izquierda de la cadena
        for (int i = arrayInfix.length-1; i >= 0; i--) {
            entrada.push( arrayInfix[i] );
        }

        try {
            // Mientras haya elementos en el stack de entrada
            while ( !entrada.isEmpty() ) {
                String elemento = entrada.peek();
                switch ( prioridad(elemento) ){
                    case 1:
                        String e1 = entrada.pop();
                        tmp.push( e1 );
                        break;
                    case 3:
                    case 4:
                        while(prioridad(tmp.peek()) >= prioridad(entrada.peek())) {
                            String e2 = tmp.pop();
                            salida.push( e2 );
                        }
                        String e3 = entrada.pop();
                        tmp.push( e3 );
                        break;
                    case 2:
                        while( !tmp.peek().equals("(") ) {
                            String e4 = tmp.pop();
                            salida.push( e4 );
                        }
                        tmp.pop();
                        entrada.pop();
                        break;
                    default:
                        String e5 = entrada.pop();
                        salida.push( e5 );
                }
            }

            //Limpiar la expresion
            String infijo = cadena.replace(" ", "");
            String postfijo = salida.toString().replaceAll("[\\]\\[,]", "");

            //Mostrar resultados:
            System.out.println("Expresion Infija: " + infijo);
            System.out.println("Expresion Postfija: " + postfijo);

        }catch(Exception ex){
            System.out.println("Error en la expresión algebraica");
            ex.printStackTrace();
        }
    }

    /* Se analiza la prioridad de los operadores y parentesis
    Los operandos tiene mayor prioridad
     */
    private static int prioridad(String operando) {
        int p = 10000;

        switch (operando ) {
            case "^" :
                p = 5;
                break;
            case "*":
                p = 4;
                break;
            case "/":
                p = 4;
                break;
            case "+":
                p = 3;
                break;
            case "-":
                p = 3;
                break;
            case ")":
                p = 2;
                break;
            case "(":
                p = 1;
                break;
        }
        return p;
    }

    private static String limpiarCadena(String s) {
        //Elimina espacios en blanco
        s = s.replaceAll("\\s+", "");
        // Colocar toda la expresion entre parantesis
        s = "(" + s + ")";
        String operadores = "+-*/()";
        String str = "";

        //Deja espacios entre operadores
        for (int i = 0; i < s.length(); i++) {
            if (operadores.contains("" + s.charAt(i))) {
                str = str + " " + s.charAt(i) + " ";
            } else {
                str = str + s.charAt(i);
            }
        }

        return str.replaceAll("\\s+", " ").trim();
    }
}