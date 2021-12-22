package OrdenamientoBusqueda;

public class OrdenamientoInsercionDirecta
{
    public static int[] insercionDirecta(int arreglo[])
    {
        int indMax = arreglo.length-1;
		int j;
		int valor;

        for (int i=1; i<=indMax; i++)
        {
            j = i;
			valor = arreglo[i];
            while (j > 0 && valor < arreglo[j-1])
			{
                arreglo[j] = arreglo[j-1];
                j = j - 1;
            }
            arreglo[j] = valor;
            System.out.println(muestraArreglo(arreglo));
        }
        return arreglo;
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
        System.out.println("Ordenamiento por el método de Inserción Directa");
        System.out.println(muestraArreglo(arreglo));
        arreglo = insercionDirecta(arreglo);
        System.out.println(muestraArreglo(arreglo));
    }

}
