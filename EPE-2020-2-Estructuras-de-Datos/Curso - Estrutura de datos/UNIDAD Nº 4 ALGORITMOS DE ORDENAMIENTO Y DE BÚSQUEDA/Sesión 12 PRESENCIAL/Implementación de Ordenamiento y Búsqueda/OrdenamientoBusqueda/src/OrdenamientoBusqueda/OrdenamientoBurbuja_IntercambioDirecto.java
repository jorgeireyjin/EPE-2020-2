package OrdenamientoBusqueda;

public class OrdenamientoBurbuja_IntercambioDirecto
{
    public static int[] ordBurbuja(int arreglo[])
    {
        boolean ordenado = false; 
		int indMax = arreglo.length-1;
		int valor;
		
        while (ordenado == false)
		{
            ordenado = true;
            for (int i=0; i<indMax; i++)
			{
                if (arreglo[i] > arreglo[i+1]) 
				{
                    valor = arreglo[i];
                    arreglo[i] = arreglo[i+1];
                    arreglo[i+1] = valor;
                    ordenado = false;
                }
            }
            indMax = indMax - 1;
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
        System.out.println("Ordenamiento por el método de Burbuja (Intercambio Directo)");
        System.out.println(muestraArreglo(arreglo));
        arreglo = ordBurbuja(arreglo);
        System.out.println(muestraArreglo(arreglo));
    }

}
