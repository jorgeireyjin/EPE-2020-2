require "./Trabajador"

class Empresa
	attr_accessor :trabajadores

	def initialize()
		@trabajadores = Array.new
	end

	def agregar_trabajador(trabajador)
		@trabajadores.push(trabajador)
	end

	def calcular_todos_los_bonos()
		for t in @trabajadores
			b = calculo_de_bono(t.tipo, VENTAS_PROMEDIO, obtener_cantidad_trabajadores_x_tipo(t.tipo) )
			t.agrega_bono(b)
		end

	end

	def obtener_monto_total_de_bonos()
		rpta = 0.0
		for t in trabajadores
			rpta = rpta + t.bono()
		end

		return rpta.round(2)
	end

	def obtener_bono_de_trabajador(cod)
		rpta = 0.0
		for t in trabajadores
			if cod == t.codigo
				rpta = t.bono()
			end
		end

		return rpta
	end

	def obtener_promedio_de_bonos()
		suma = 0.0
		for t in trabajadores
			suma = suma +  t.bono()
		end

		return (suma / trabajadores.size).round(2)
	end

	private 
	def obtener_cantidad_trabajadores_x_tipo(tipo)
		contador = 0
		for t in trabajadores
			if t.tipo == tipo
				contador = contador + 1
			end
		end

		return contador
	end

	private
	def calculo_de_bono(tipo, ventasProm, cantidad)
		if tipo ==  'Plata'
			monto = 100 + ventasProm*5 + cantidad
		elsif  tipo == 'Oro'
			monto =  cantidad*0.08 + ventasProm*10 + 500
		elsif tipo == 'Platino'
			monto = cantidad*0.30 + ventasProm*cantidad
		end

		return monto.round(2)
	end		

end


puts "*********I N I C I O ***************"

VENTAS_PROMEDIO = 10000

empresa = Empresa.new
trab1 = Trabajador.new('001','Nombre Uno'   ,'Apellido-Uno'   ,1000,'Plata')
trab2 = Trabajador.new('002','Nombre Dos'   ,'Apellido-Dos'   ,1500,'Plata')
trab3 = Trabajador.new('003','Nombre Tres'  ,'Apellido-Tres'  ,3000,'Oro')
trab4 = Trabajador.new('004','Nombre Cuatro','Apellido-Cuatro',3500,'Oro')
trab5 = Trabajador.new('005','Nombre Cinco' ,'Apellido-Cinco' ,5000,'Platino')
trab6 = Trabajador.new('006','Nombre Seis'  ,'Apellido-Seis'  ,5500,'Platino')

empresa.agregar_trabajador(trab1)
empresa.agregar_trabajador(trab2)
empresa.agregar_trabajador(trab3)
empresa.agregar_trabajador(trab4)
empresa.agregar_trabajador(trab5)
empresa.agregar_trabajador(trab6)

empresa.calcular_todos_los_bonos()

puts "Cantidad trabajadores #{empresa.trabajadores.size}"

puts "a)	Obtener el total de bonos a pagar de todos los trabajadores independientemente del tipo de trabajador."
puts "#{empresa.obtener_monto_total_de_bonos()}"
puts ""
puts "b)	Calcular el monto del bono de un trabajador Platino, oro y plata. "
puts "bono Plata   - #{empresa.obtener_bono_de_trabajador('001')}"
puts "bono Oro     - #{empresa.obtener_bono_de_trabajador('003')}"
puts "bono Platino - #{empresa.obtener_bono_de_trabajador('005')}"
puts ""
puts "c)	Calcular el promedio general de todos los bonos, sin importar el tipo. "
puts "#{empresa.obtener_promedio_de_bonos() }"

puts "*********** F I N *************"


