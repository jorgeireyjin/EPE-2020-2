package OrdenamientoBusqueda;

public class BusquedaBinaria {

    public static int busquedaBinaria(int [] arreglo, int dato)
    {
        int inicio = 0;
        int fin = arreglo.length - 1;
        int pos;

        while (inicio <= fin) {
            pos = (inicio+fin) / 2;
            if ( arreglo[pos] == dato )
                return pos;
            else if ( arreglo[pos] < dato )
            {
                inicio = pos + 1;
            }
            else
            {
                fin = pos - 1;
            }
        }
        return -1;
    }

    public static String muestraArreglo(int arreglo[])
    {
        String cadena = "";
        int indMax = arreglo.length - 1;

        for (int i=0; i<=indMax; i++)
        {
            cadena = cadena + arreglo[i] + " ";
        }
        return cadena;
    }

    public static void main(String[] args)
    {
        int arreglo[] = {3,4,8,10,15,22,31};
        int valor = 31;
        System.out.println("Búsqueda Binaria");
        System.out.println(muestraArreglo(arreglo));
        System.out.println(busquedaBinaria(arreglo,valor));
    }
}

