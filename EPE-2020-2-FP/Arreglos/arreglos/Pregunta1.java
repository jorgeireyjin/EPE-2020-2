package arreglos;

public class Pregunta1 {

    public static void main(String[] args) {
        System.out.println("==================================");
        System.out.println("===== P R E G U N T A   1      ===");
        System.out.println("==================================");

        String[] productos = {
                "Porta Cepillo Dientes Marvel Thor",
                "Iron Man Marvel Naranja",
                "Esponja baño adventure time",
                "Taper comida adventure time",
                "Babero bebe Marvel celeste",
                "Babero bebe Marvel gris",
                "Posa vasos capitán america",
                "Tomatodo adventure time azul",
                "Toalla gorra cabello Marvel azul"
        };

        int[] cantidades = {
                100, 250, 300, 80, 26, 148, 190, 210, 225
        };

        float[] costos = {
                7.90f, 7.12f, 9.90f, 9.90f, 12.72f, 12.72f, 11.13f, 15.90f, 11.13f
        };

        System.out.println("Venta Total es " + montoTotal(cantidades , costos) );
        System.out.println("Producto mas vendido es " + productoMasVendido(productos, cantidades) );
        System.out.println("Producto con mayor venta total es " + productoMayorVentaTotal(productos, cantidades,costos) );
        System.out.println("El promedio de productos vendidos " + promedioPRoductosVendidso(cantidades));
    }

    /*
       a) Calcular el monto total de venta de la tienda. Para ello, primero debe calcular el monto total de venta de cada artículo, multiplicando la cantidad vendida por el costo por unidad. Luego sumar el monto total obtenido de todos los productos listados.
    */
    private static float montoTotal(int[] c , float[] p) {
        float total = 0f;
        for (int i=0; i <= c.length-1; i++){
            total = total + c[i]*p[i];
        }
        return total;
    }

    /*
      b) Indicar cuál fue el producto con mayor cantidad de unidades vendidas.
    */
    private static String productoMasVendido(String[] p, int[] c) {
        int mayor = Integer.MIN_VALUE;
        int pos = -1;

        for (int i=0; i <= c.length-1 ; i ++) {
            if ( c[i] > mayor) {
                mayor = c[i];
                pos = i;
            }
        }

        return p[pos];
    }

    /*
      c) Indicar cuál fue el producto con el mayor monto de venta total.
     */
    private static String productoMayorVentaTotal(String[] prod, int[] c, float[] p) {
        int mayor = Integer.MIN_VALUE;
        int pos = -1;

        for (int i = 0; i <= c.length - 1; i++) {
            if (c[i] * p[i] > mayor) {
                mayor = c[i];
                pos = i;
            }
        }
        return prod[pos];
    }

    /*
      d) Indicar cuál fue el promedio de productos vendidos.
    */
    private static float promedioPRoductosVendidso( int[] c) {
        int suma = 0;

        for (int i = 0; i <= c.length-1; i++ ) {
                suma = suma + c[i];
        }
        return (suma*1.0F)/ c.length;
    }

}
