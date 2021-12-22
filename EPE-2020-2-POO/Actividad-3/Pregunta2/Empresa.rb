require "./Maquina"
require "./Americana"
require "./Nacional"

class Empresa
	attr_accessor :maquinas

	def initialize()
		@maquinas = Array.new
	end

	def registrarMaquinas(m)
		@maquinas.push(m)
    end

    def listarMaquinas()
        for i in 0..@maquinas.size-1
            puts @maquinas[i].info
        end
    end

    def calcularPromedioCapacidad()
        suma = 0
        for i in 0..@maquinas.size-1
            suma = suma +  @maquinas[i].capacidadTotal
        end

        return suma*1.0/@maquinas.size
    end

    def listarEstimadosVenta()
        for i in 0..@maquinas.size-1
            m = @maquinas[i]
            if (m.instance_of? Americana)
                puts "Maquina #{m.cod} - Estimado: #{m.ventas}"
            else
                puts "Funcionalidad no incluida en la maquina de codigo #{m.cod}"
            end
        end
    end
    
end

puts "*********I N I C I O ***************"

empresa = Empresa.new

a1 = Americana.new('A-001', "SERIE-A-001", true, 5, 10 )
a2 = Americana.new('A-002', "SERIE-A-002", true, 10, 20 )
a3 = Americana.new('A-003', "SERIE-A-003", false, 15, 30 )

n1 = Nacional.new('N-001', "SERIE-N-001", "ROSADO", 5, 10 )
n2 = Nacional.new('N-002', "SERIE-N-002", "VERDE", 10, 20 )
n3 = Nacional.new('N-003', "SERIE-N-003", "NEGRO", 15, 30 )

## REgistrar Maquinas
puts "registrando maquinas ... Americanas"
empresa.registrarMaquinas(a1)
empresa.registrarMaquinas(a2)
empresa.registrarMaquinas(a3)

puts "registrando maquinas ... Nacionales"
empresa.registrarMaquinas(n1)
empresa.registrarMaquinas(n2)
empresa.registrarMaquinas(n3)

puts "==> Listando maquinas"
empresa.listarMaquinas()

puts "==> El promedio de capacidad de las maquinas #{empresa.calcularPromedioCapacidad()}"

puts "==> Listar Estimado de ventas"
empresa.listarEstimadosVenta()