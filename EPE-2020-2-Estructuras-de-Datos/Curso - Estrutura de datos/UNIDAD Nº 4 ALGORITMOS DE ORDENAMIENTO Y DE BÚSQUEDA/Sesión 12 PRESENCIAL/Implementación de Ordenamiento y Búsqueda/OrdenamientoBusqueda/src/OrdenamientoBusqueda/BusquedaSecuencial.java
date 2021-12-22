package OrdenamientoBusqueda;

public class BusquedaSecuencial {

    public static int busquedaSecN(int arreglo[], int valor)
    {
        int indMax = arreglo.length - 1;
        int i = 0;

        while (i < indMax && valor != arreglo[i])
            i = i + 1;
		
        if (valor == arreglo[i])
            return i;
        else
            return -1;
    }

    public static int busquedaSecO(int arreglo[], int valor)
    {
        int indMax = arreglo.length - 1;
        int i = 0;

        while (i < indMax && valor > arreglo[i])
            i = i + 1;

        if (valor == arreglo[i])
            return i;
        else
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
        int arreglo[] = {34,8,64,51,32,21};
        int valor = 21;
        System.out.println("Búsqueda Secuencial No Ordenada");
        System.out.println(muestraArreglo(arreglo));
        System.out.println(busquedaSecN(arreglo,valor));

        int arreglo2[] = {3,4,8,10,15,22,31};
        valor = 10;
        System.out.println("Búsqueda Secuencial Ordenada");
        System.out.println(muestraArreglo(arreglo2));
        System.out.println(busquedaSecO(arreglo2,valor));
    }

}
