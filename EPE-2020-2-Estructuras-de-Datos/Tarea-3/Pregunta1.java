package tarea3;

import java.util.LinkedList;
import java.util.Queue;
import java.util.Scanner;

/*
Desarrollar un programa que permita ingresar nombres en una cola y
siguiendo las operaciones propias de colas, mostrar el nombre de la persona
que se encuentra en la posición N de la cola.
 */
public class Pregunta1 {

    public static void main(String[] args ) {
        Queue<String> queue = new LinkedList<String>();

        queue.add("Pepito");
        queue.add("Carlitos");
        queue.add("Luchito");
        queue.add("Pablito");
        queue.add("Pedrito");

        /* Mostrar la cola */
        for(String q : queue){
            System.out.println(q);
        }

        System.out.println("/*********************************/");
        System.out.println("/*    P R E G U N T A   1        */");
        System.out.println("/*********************************/");
        int n = 0;
        Scanner sc = new Scanner(System.in);
        System.out.println("Ingresar la posicion de la persona");
        n = sc.nextInt();

        /*
        Asumimos que la cola empieza en la posicion 1 como en la vida real ....
         */
        for (int i=1; i < n ; i++) {
            queue.poll();
        }

        System.out.println("La persona en esa posicion es " + queue.peek() );
    }
}
