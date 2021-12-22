require "./Impresora"
require "./Fabrica"

class Colegio
	attr_accessor :colaboradores

	def initialize()
		@colaboradores = Array.new
	end

	def registrarColaborador(c)
		@colaboradores.push(c)
    end

    def cantidadColaboradores()
    	return @colaboradores.size
    end

    def listarColaboradores(prt)
        for i in 0..colaboradores.size-1
            prt.mostrar( colaboradores[i].datos() ) 
        end
    end

    def generaPlanilla()
    	suma = 0
    	for i in 0..colaboradores.size-1
    		suma = suma + colaboradores[i].v_sueldo
    	end

    	return suma
    end

    def buscarDni(dni)
    	sueldo = 0;
    	for i in 0..colaboradores.size-1
    		if ( colaboradores[i].v_dni == dni)
    			sueldo = colaboradores[i].v_sueldo
    		end
    	end

    	return sueldo    	
    end
end


c = Colegio.new

c1 = Fabrica.for("TCO","DNI-1","Chupe 1", 60, 6000, 10)
c2 = Fabrica.for("TCO","DNI-2","Chupe 2", 55, 6000, 15)
c3 = Fabrica.for("TPA","DNI-3","Chupe 3", 50, "Investigacion", 60, 40)
c4 = Fabrica.for("TPA","DNI-4","Chupe 4", 45, "Derecho" , 50, 40)
c5 = Fabrica.for("ADM","DNI-5","Chupe 5", 40, 970)
c6 = Fabrica.for("ADM","DNI-6","Chupe 6", 56, 970)

c.registrarColaborador(c1)
c.registrarColaborador(c2)
c.registrarColaborador(c3)
c.registrarColaborador(c4)
c.registrarColaborador(c5)
c.registrarColaborador(c6)

matricial = Impresora.instance

matricial.mostrar("Cantidad de Colaboradores")
matricial.mostrar( c.cantidadColaboradores() )

matricial.mostrar "Listado de empleado: "
c.listarColaboradores(matricial)

matricial.mostrar("Suma de sueldos es: ")
matricial.mostrar( c.generaPlanilla() )

matricial.mostrar("El Sueldo del empleado con DNI 00000005 ")
matricial.mostrar( c.buscarDni("00000005") )