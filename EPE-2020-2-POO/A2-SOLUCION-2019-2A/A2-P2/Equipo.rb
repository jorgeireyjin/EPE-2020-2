require "./Participante"

class Equipo
	attr_accessor :nombre, :miembros, :puntajeTotal

	def initialize(nombre)
		@nombre   = nombre
		@miembros = Array.new
	end

	def agregar_miembro(participante)
		miembros.push(participante)
	end

	def obtener_puntaje_total_del_equipo()
		puntajeTotal = 0
		for m in miembros
			puntajeTotal = puntajeTotal + m.obtener_puntaje()
		end

		return puntajeTotal
	end

end

