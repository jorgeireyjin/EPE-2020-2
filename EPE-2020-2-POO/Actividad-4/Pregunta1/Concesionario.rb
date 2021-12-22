require "./Impresora"
require "./Fabrica"

class Concesionario
	attr_accessor :vehiculos

	def initialize()
		@vehiculos = Array.new
	end

	def ingresarVehiculo(v)
		@vehiculos.push(v)
    end

    def buscarVehiculoMayorPrecio()
    	mayorPrecio = 0
    	pos = -1
    	for i in 0..vehiculos.size-1
    		if ( vehiculos[i].v_precio > mayorPrecio)
    			mayorPrecio = vehiculos[i].v_precio
    			pos = i
    		end
    	end

    	return vehiculos[pos].infoTecnica()
    end

   def buscarVehiculoMenorPrecio()
    	menorPrecio = 1000000
    	pos = -1
    	for i in 0..vehiculos.size-1
    		if ( (vehiculos[i].instance_of? Camioneta) && 
    			 (vehiculos[i].v_precio < menorPrecio) )
    			menorPrecio = vehiculos[i].v_precio
    			pos = i
    		end
    	end

    	return vehiculos[pos].infoTecnica()
    end

    def mostrarVehiculos(prt)
        for i in 0..vehiculos.size-1
            prt.mostrar( vehiculos[i].infoTecnica() )
        end        
    end
 
end

con = Concesionario.new

v1 = Fabrica.for("Auto","Auto Marca 1","M-1", 10000,5)
v2 = Fabrica.for("Auto","Auto Marca 2","M-2", 11000,5)
v3 = Fabrica.for("Auto","Auto Marca 3","M-3", 120000,5)
con.ingresarVehiculo(v1)
con.ingresarVehiculo(v2)
con.ingresarVehiculo(v3)

v4 = Fabrica.for("Camioneta","Camioneta Marca 1","M-1",90000,100,4)
v5 = Fabrica.for("Camioneta","Camioneta Marca 2","M-2",80000,101,4)
v6 = Fabrica.for("Camioneta","Camioneta Marca 3","M-3",70000,102,4)
con.ingresarVehiculo(v4)
con.ingresarVehiculo(v5)
con.ingresarVehiculo(v6)

impresora = Impresora.instance
con.mostrarVehiculos(impresora)

impresora.mostrar("El vehiculo mas costos es: ")
impresora.mostrar( con.buscarVehiculoMayorPrecio()  )

impresora.mostrar( "La camioneta menos costosa es: " )
impresora.mostrar( con.buscarVehiculoMenorPrecio() )