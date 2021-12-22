package caso1;

public class Textiles {

    public static void main(String[] args) {
        System.out.println( checkFibraAspectoDiam("Algodon", "Helicoidal",12) );
        System.out.println( checkFibraAspectoDiam("Linio", "Cilindrico",12) );
        System.out.println( checkFibraAspectoDiam("Ramio", "Ancho",60) );

        System.out.println();
        System.out.println("Estos no cumplen el aspecto");
        System.out.println( checkFibraAspectoDiam("Algodon", "Cilindrico",12) );
        System.out.println( checkFibraAspectoDiam("Linio", "Ancho",12) );
        System.out.println( checkFibraAspectoDiam("Ramio", "Helicoidal",60) );

        System.out.println();
        System.out.println("Estos no cumplen el Diametro");
        System.out.println( checkFibraAspectoDiam("Algodon", "Helicoidal",11) );
        System.out.println( checkFibraAspectoDiam("Linio", "Cilindrico",11) );
        System.out.println( checkFibraAspectoDiam("Ramio", "Ancho",121) );

        System.out.println();
        System.out.println("Estos no cumplen NADA");
        System.out.println( checkFibraAspectoDiam("Algodon", "Cilindrico",5) );
        System.out.println( checkFibraAspectoDiam("Linio", "Ancho",5) );
        System.out.println( checkFibraAspectoDiam("Ramio", "Helicoidal",5) );

    }

    private static boolean checkFibraAspecto(String fibra, String aspecto) {
        boolean rpta = true;

        if ( fibra.equalsIgnoreCase("Algodon") ) {
            if (aspecto.equalsIgnoreCase("Helicoidal")) {
                rpta = true;
            } else {
                rpta = false;
            }
        } else if ( fibra.equalsIgnoreCase("Linio") ) {
            if (aspecto.equalsIgnoreCase("Cilindrico")) {
                rpta = true;
            } else {
                rpta = false;
            }
        } else if ( fibra.equalsIgnoreCase("Ramio") ) {
            if (aspecto.equalsIgnoreCase("Ancho")) {
                rpta = true;
            } else {
                rpta = false;
            }
        }

            return rpta;
    }

    private static boolean checkFibraDiam(String fibra, int diametro) {
        boolean rpta = true;

        if ( fibra.equalsIgnoreCase("Algodon") ) {
            if (diametro >= 12 && diametro <= 40 ) {
                rpta = true;
            } else {
                rpta = false;
            }
        } else if ( fibra.equalsIgnoreCase("Linio") ) {
            if (diametro >= 12 && diametro <= 25 ) {
                rpta = true;
            } else {
                rpta = false;
            }
        } else if ( fibra.equalsIgnoreCase("Ramio") ) {
            if (diametro >= 60 && diametro <= 120 ) {
                rpta = true;
            } else {
                rpta = false;
            }
        }

        return rpta;
    }

    private static String checkFibraAspectoDiam(String fibra, String aspecto, int diametro) {
        String rpta = "Una muestra de " + fibra + " de aspecto " + aspecto +
                      " y con un diametro de " + diametro + " micras " +
                      " es una muestra que ";

        String fallaAspecto = "";
        String fallaDiametro = "";

        if ( !checkFibraAspecto(fibra, aspecto) ) {
            fallaAspecto = "GRAVE";
        }

        if ( !checkFibraDiam(fibra, diametro) ) {
            fallaDiametro = "INTERMEDIA";
        }

        if (fallaAspecto.equals("") && fallaDiametro.equals("")) {
            rpta = rpta + " esta CERTIFICADA";
        } else {
            rpta = rpta + "NO tiene la calidad esperada y presenta una falla ";
            if ( !fallaAspecto.equals("")) {
                rpta = rpta + fallaAspecto;
                if ( !fallaDiametro.equals("")) {
                    rpta = rpta + " y otra falla " + fallaDiametro;
                }
            } else {
                rpta = rpta + fallaDiametro;
            }

        }

        return rpta;
    }

}
