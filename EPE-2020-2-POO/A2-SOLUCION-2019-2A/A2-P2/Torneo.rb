require "./Participante"
require "./Equipo"

class Torneo
	attr_accessor :equipos, :lista__nombres_equipos

	def initialize()
		@equipos = Array.new
		@lista__nombres_equipos = Array.new
	end

	def agrega_participante(p)
		nombre = p.nombre_equipo

		# Buscar si ya registramos al equipo
		if verificar_si_equipo_existe(nombre) == true
			for e in @equipos
				if e.nombre == nombre
					e.agregar_miembro(p)
				end
			end
		else
			@lista__nombres_equipos.push(nombre)

			e = Equipo.new(nombre)
			e.agregar_miembro(p)
			@equipos.push(e)

		end

	end

	def tabla_de_posiciones()
		tempo = Array.new
		for e in @equipos
			miembros = e.miembros
			for m in miembros
				tempo.push(m)
			end
		end

#https://apidock.com/ruby/Array/sort!
		tempo.sort! {|a, b| b.obtener_puntaje() <=> a.obtener_puntaje() }
		#Imprimir
		for p in tempo
			puts "#{p.to_s}"
		end

	end

	def obtener_campeon()
		mayor = 0
		pos = 0
		for e in @equipos
			miembros = e.miembros
			for i in 0..miembros.size-1
				if miembros[i].obtener_puntaje() > mayor
					mayor = miembros[i].obtener_puntaje()
					pos = i
				end
			end
		end

		return miembros[pos].to_s

	end

	def buscar_participante(dni)
		rpta = "NO SE ENCONTRO"
		for e in @equipos
			miembros = e.miembros
			for i in 0..miembros.size-1
				if miembros[i].dni == dni
					rpta = miembros[i].to_s
					return rpta
				end
			end
		end

		return rpta
	end

	def modificar_partidas(dni, puntos)
		for e in @equipos
			miembros = e.miembros
			for m in miembros
				if m.dni == dni
					m.ganadas = puntos
				end
			end
		end

	end


	def puntajes_x_equipos()
		for e in @equipos
			puts "#{e.nombre} - #{e.obtener_puntaje_total_del_equipo()}"
		end

	end

	private 
	def verificar_si_equipo_existe(nombre)
		if  @lista__nombres_equipos.include?(nombre)
			return true
		else
			return false
		end
	end

end

=begin
a)	Desarrolle las clases necesarias y sus relaciones. Registre 6 equipos. 
b)	Desarrolle un método que genere un listado ordenado por puntaje de los participantes del torneo, es decir la tabla de posiciones. 
c)	Desarrolle un método que permita obtener el participante campeón del torneo. 
d)	Desarrolle un método que permita buscar un participante del torneo por dni, y que devuelva los datos del mismo incluido su puntaje final. En caso no se encuentre el equipo debe indicar “No encontrado”. 
e)	Desarrolle un método que reciba un número de dni y un número, tal que permita modificar el número de partidas ganadas, pruebe que haya realizado el cambio llamando al método del punto d. 
=end


puts "a)	Desarrolle las clases necesarias y sus relaciones. Registre 6 equipos."
torneo = Torneo.new

p01 = Participante.new('Karate-01', 15, '09988771', 'BLANCO', 0, 12, 1, 'MIYAGI-DOJO')
p02 = Participante.new('Karate-02', 16, '09988772', 'NEGRO' , 1, 11, 1, 'MIYAGI-DOJO')
p03 = Participante.new('Karate-03', 17, '09988773', 'AZUL'  , 2, 10, 1, 'KARATE-DO')
p04 = Participante.new('Karate-04', 16, '09988774', 'VERDE' , 3, 9, 1, 'KARATE-DO')
p05 = Participante.new('Karate-05', 15, '09988775', 'NEGRO' , 4, 8, 1, 'COBRA-DOJO')
p06 = Participante.new('Karate-06', 14, '09988776', 'NEGRO' , 5, 7, 1, 'COBRA-DOJO')
p07 = Participante.new('Karate-07', 16, '09988777', 'ROJO'  , 6, 6, 1, 'DOJO-3')
p08 = Participante.new('Karate-08', 17, '09988778', 'BLANCO', 7, 5, 1, 'DOJO-3')
p09 = Participante.new('Karate-09', 18, '09988779', 'NEGRO' , 8, 4, 1, 'DOJO-5')
p10 = Participante.new('Karate-10', 16, '09988770', 'NEGRO' , 9, 3, 1, 'DOJO-5')
p11 = Participante.new('Karate-11', 16, '09988781', 'NEGRO' , 10, 2, 1, 'DOJO-6')
p12 = Participante.new('Karate-12', 17, '09988782', 'NEGRO' , 11, 1, 1, 'DOJO-6')

torneo.agrega_participante(p01)
torneo.agrega_participante(p03)
torneo.agrega_participante(p05)
torneo.agrega_participante(p07)
torneo.agrega_participante(p09)
torneo.agrega_participante(p11)

torneo.agrega_participante(p02)
torneo.agrega_participante(p04)
torneo.agrega_participante(p06)
torneo.agrega_participante(p08)
torneo.agrega_participante(p10)
torneo.agrega_participante(p12)

torneo.puntajes_x_equipos()

puts " "
puts "b)	Desarrolle un método que genere un listado ordenado por puntaje de los participantes del torneo, es decir la tabla de posiciones. "
puts " ==> Esta ordenado por Puntaje total"
torneo.tabla_de_posiciones()

puts " "
puts "c)	Desarrolle un método que permita obtener el participante campeón del torneo. "
puts "El CAMPEON es #{ torneo.obtener_campeon() }"

puts " "
puts "d)	Desarrolle un método que permita buscar un participante del torneo por dni, y que devuelva los datos del mismo incluido su puntaje final. En caso no se encuentre el equipo debe indicar “No encontrado”. "
puts "CASO 1 .... #{torneo.buscar_participante('09988778') }"
puts "CASO 2 .... #{torneo.buscar_participante('01111111') }"

puts " "
puts "e)	Desarrolle un método que reciba un número de dni y un número, tal que permita modificar el número de partidas ganadas, pruebe que haya realizado el cambio llamando al método del punto d. "
puts "ANTES DE MODIFICAR   .... #{torneo.buscar_participante('09988773') }"
torneo.modificar_partidas('09988773',15)
puts "DESPUES DE MODIFICAR .... #{torneo.buscar_participante('09988773') }"


puts " "
torneo.puntajes_x_equipos()