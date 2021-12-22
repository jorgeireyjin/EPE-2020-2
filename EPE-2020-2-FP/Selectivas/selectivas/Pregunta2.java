package selectivas;

public class Pregunta2 {
    public static void main(String[] args) {
        System.out.println("==================================");
        System.out.println("===== P R E G U N T A   2      ===");
        System.out.println("==================================");
        String rubro = "";

        rubro= "Bodegas";
        System.out.println(rubro + " " + monto_total(rubro, 0) );
        System.out.println(rubro + " " + monto_total(rubro, 1) );

        System.out.println("----");
        rubro= "Mecanicas";
        System.out.println(rubro + " " + monto_total(rubro, 0) );
        System.out.println(rubro + " " + monto_total(rubro, 1) );

        System.out.println("----");
        rubro= "Barberias";
        System.out.println(rubro + " " + monto_total(rubro, 0) );
        System.out.println(rubro + " " + monto_total(rubro, 1) );

        System.out.println("----");
        rubro= "Restaurant";
        System.out.println(rubro + " " + monto_total(rubro, 0) );
        System.out.println(rubro + " " + monto_total(rubro, 1) );
    }

    //Elaborar un método que calcule el monto total obligatorio, dado el rubro.
    public static int monto_total_obligatorio(String rubro) {
        int base = 5000;
        int instalacion = 0;

        switch ( rubro) {
            case "Bodegas":
                instalacion = 500;
                break;
            case "Mecanicas":
                instalacion = 800;
                break;
            case "Barberias":
                instalacion = 1400;
                break;
            case "Restaurant":
                instalacion = 1000;
                break;
        }
        return base + instalacion;
    }

    // Elaborar un método que calcule el monto total opcional, dado el rubro y los servicios opcionales que se tomen. Como los servicios son opcionales, como sugerencia, se puede establecer que los parámetros de cada tipo de servicio sean 0 o 1, donde 0 indicaría que no se adquirió el servicio y 1 que si lo adquirió.
    public static int monto_total_opcional(String rubro, int opcional) {
        int base = 0;
        int soporte = 0;

        if ( opcional == 0 ) {
            return 0;
        }

        switch ( rubro) {
            case "Bodegas":
                base = 3500;
                soporte = 400;
                break;
            case "Mecanicas":
                base = 1800;
                soporte = 200;
                break;

            case "Barberias":
                base = 2400;
                soporte = 100;
                break;
            case "Restaurant":
                base = 2000;
                soporte = 100;
                break;
        }
        return base + soporte;
    }

    // Elaborar un método que calcule el monto total del servicio, dado los montos totales obligatorios y opcionales. Dentro del método, utilizar los 2 métodos implementados en los puntos a y b.
    public static float monto_total(String rubro, int opcional) {
        return monto_total_obligatorio(rubro) + monto_total_opcional(rubro, opcional);
    }
}
