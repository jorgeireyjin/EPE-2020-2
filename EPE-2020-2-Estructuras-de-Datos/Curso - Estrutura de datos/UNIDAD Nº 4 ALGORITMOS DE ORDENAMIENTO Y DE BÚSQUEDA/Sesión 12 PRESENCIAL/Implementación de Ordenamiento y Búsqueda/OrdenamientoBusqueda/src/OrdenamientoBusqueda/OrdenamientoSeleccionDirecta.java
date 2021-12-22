package OrdenamientoBusqueda;

public class OrdenamientoSeleccionDirecta
{
    public static int buscaMenor(int arreglo[], int indMax, int desde)
    {
        int indice = desde; 
		int menor = arreglo[desde];
		
        for (int k=desde; k<=indMax; k++)
		{
            if (arreglo[k] < menor)
			{
                menor = arreglo[k];
				indice = k;
            }
        }
        return indice;
    }

    public static int[] seleccionDirecta(int arreglo[])
    {
        int indMax = arreglo.length - 1;
		int j; 
		int valor;
		
        for (int i=0; i<=indMax; i++)
		{
            j = buscaMenor(arreglo, indMax, i);
            valor = arreglo[j];
            arreglo[j] = arreglo[i];
            arreglo[i] = valor;
            System.out.println(muestraArreglo(arreglo));
        }
        return arreglo;
    }

    public static String muestraArreglo(int arreglo[])
    {
        String cadena = ""; 
		int indMax = arreglo.length-1;
        for (int i=0; i<=indMax; i++)
		{
            cadena = cadena + arreglo[i] + " ";
        }
        return cadena;
    }

    public static void main(String[] args)
    {
        int arreglo[] = {34,8,64,51,32,21};
        System.out.println("Ordenamiento por el método de Selección Directa");
        System.out.println(muestraArreglo(arreglo));
        arreglo = seleccionDirecta(arreglo);
        System.out.println(muestraArreglo(arreglo));
    }

}
