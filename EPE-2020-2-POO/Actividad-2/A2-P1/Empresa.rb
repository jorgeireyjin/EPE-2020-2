require "./Vehiculo"

class Empresa
	attr_accessor :vehiculos

	def initialize()
		@vehiculos = Array.new
	end

	def registrar_vehiculo(v)
		@vehiculos.push(v)
    end
    
    def obtener_clasificacion(placa)
        rpta = ""
        for v in vehiculos
			if placa == v.placa
				rpta = v.clasif
			end
		end

		return rpta
    end

    def calcular_capacidad_total
        total = 0.0
        for v in vehiculos
            if (v.clasif == "MODERNO")
                total = total + v.capacidad
            end
        end   
        return total     
    end

    def mostrar_vehiculos_antiguos
		for v in vehiculos
            if (v.clasif == "ANTIGUO")
                puts v.info
            end
        end   
    end

end


puts "*********I N I C I O ***************"

empresa = Empresa.new

v01 = Vehiculo.new('ABC-001','1998',1998)
v02 = Vehiculo.new('ABC-002','1999',1999)
v03 = Vehiculo.new('ABC-003','2000',2000)
v04 = Vehiculo.new('ABC-004','2002',2002)
v05 = Vehiculo.new('ABC-005','2014',2014)
v06 = Vehiculo.new('ABC-006','2015',2015)
v07 = Vehiculo.new('ABC-007','2015',2015)
v08 = Vehiculo.new('ABC-008','2016',2016)
v09 = Vehiculo.new('ABC-009','2020',2020)
v10 = Vehiculo.new('ABC-010','2020',2020)

## REgistrar vehiculos
puts "--- parte (a) ---"
empresa.registrar_vehiculo(v01)
empresa.registrar_vehiculo(v02)
empresa.registrar_vehiculo(v03)
empresa.registrar_vehiculo(v04)
empresa.registrar_vehiculo(v05)
empresa.registrar_vehiculo(v06)
empresa.registrar_vehiculo(v07)
empresa.registrar_vehiculo(v08)
empresa.registrar_vehiculo(v09)
empresa.registrar_vehiculo(v10)

## Obtener clasificacion de un vehiculo
puts "--- parte (b) ---"
puts "La clasificacion de 'ABC-001' es #{empresa.obtener_clasificacion('ABC-001')}"
puts "La clasificacion de 'ABC-005' es #{empresa.obtener_clasificacion('ABC-005')}"
puts "La clasificacion de 'ABC-010' es #{empresa.obtener_clasificacion('ABC-010')}"

# OBtener capacidad total
puts "--- parte (c) ---"
puts "La capacidad total de carga (MODERNOS) es #{empresa.calcular_capacidad_total}"

# MOstrar vehiuclos antoguos
puts "--- parte (d) ---"
empresa.mostrar_vehiculos_antiguos