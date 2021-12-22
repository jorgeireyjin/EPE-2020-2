package tarea3;

import java.util.LinkedList;
import java.util.Queue;

/*
Desarrollar un programa que permita atender (eliminar) a los elementos de una cola,
una vez que la cola esté lleno.
La cola tiene valores numéricos.
Mostrar el valor de los elementos que se van atendiendo.
 */
public class Pregunta2 {

    public static void main(String[] args ) {
        Queue<Integer> queue = new LinkedList<Integer>();

        for (int i = 0 ; i < 10; i++) {
            queue.add(i);
        }

        /* Atender la cola */
        int pos = 0;
        Object o;
        do {
             o = (Object)queue.poll();
            if ( o instanceof Integer ) {
                System.out.println("Atendiendo a posicion " + pos + " con valor " + o );
                pos = pos + 1;
            }
        } while( o !=null); //Desencolamos y el valor se compara con null
        /* Ahora ya no sale el null final */

    }
}
