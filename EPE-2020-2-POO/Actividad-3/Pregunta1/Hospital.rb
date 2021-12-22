require "./Colaborador"
require "./Medico"
require "./Enfermero"

class Hospital
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

    def buscarColaborador(cod)
        for i in 0..@colaboradores.size-1
            if ( @colaboradores[i].doc == cod) 
                puts "#{@colaboradores[i].info() }"
            end
        end
    end

    def sumaSueldos()
        total = 0
        for i in 0..@colaboradores.size-1
            total = total + @colaboradores[i].sueldo
        end        

        return total
    end

    def medicoMejorPagado()
        mayor = 0
        medico = nil
        for i in 0..@colaboradores.size-1
            a = @colaboradores[i]
            if ( a.instance_of? Medico)
                if ( a.sueldo > mayor )
                    mayor = a.sueldo
                    medico = a
                end
            end
        end        

        return medico.info()
    end

    def enfermeroPeorPagado()
        menor = 9999999
        enfermero = nil
        for i in 0..@colaboradores.size-1
            a = @colaboradores[i]
            if ( a.instance_of? Enfermero)
                if ( a.sueldo < menor )
                    menor = a.sueldo
                    enfermero = a
                end
            end
        end        

        return enfermero.info()
    end
    
end

puts "*********I N I C I O ***************"

hospital = Hospital.new

m1 = Medico.new('M-001', "Doctor 1", "Medicina General", 31, 11)
m2 = Medico.new('M-002', "Doctor 2", "Neumologia"      , 32, 12)
m3 = Medico.new('M-003', "Doctor 3", "Dermatologia"    , 33, 13)
m4 = Medico.new('M-004', "Doctor 4", "Hematologia"     , 34, 14)
 
e1 = Enfermero.new('E-001', "Enfermero 1", 31, 101)
e2 = Enfermero.new('E-002', "Enfermero 2", 32, 102)
e3 = Enfermero.new('E-003', "Enfermero 3", 33, 103)
e4 = Enfermero.new('E-004', "Enfermero4 ", 34, 104)
 
## REgistrar Medicos
puts "registrando colaboradores ... medicos"
hospital.registrarColaborador(m1)
hospital.registrarColaborador(m2)
hospital.registrarColaborador(m3)
hospital.registrarColaborador(m4)

puts "registrando colaboradores ... enfermeros"
hospital.registrarColaborador(e1)
hospital.registrarColaborador(e2)
hospital.registrarColaborador(e3)
hospital.registrarColaborador(e4)

puts "La cantidad de Colaboradores es #{hospital.cantidadColaboradores() }" 

puts "Buscar colaboradores ..."
hospital.buscarColaborador("M-001")
hospital.buscarColaborador("E-003")

puts "La suma de sueldos es ... #{hospital.sumaSueldos()}"


puts "El medico mejor pagado es ... #{hospital.medicoMejorPagado()}"

puts "El enfermero peor pagado es ... #{hospital.enfermeroPeorPagado()}"
