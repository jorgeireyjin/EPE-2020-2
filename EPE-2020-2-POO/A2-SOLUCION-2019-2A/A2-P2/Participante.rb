class Participante
	attr_accessor :nombre, :edad, :dni, :color, :ganadas, :empatadas, :perdidas, :nombre_equipo

	def initialize(nombre, edad, dni, color, ganadas, empatadas, perdidas, nombre_equipo)
		@nombre  = nombre
		@edad    = edad
		@dni     = dni 
		@color   = color
		@ganadas = ganadas
		@empatadas = empatadas
		@perdidas  = perdidas
		@nombre_equipo = nombre_equipo
	end

	def obtener_puntaje() 
		puntaje = ganadas* 2 + empatadas*3
		return puntaje
	end

	def to_s()
		return "NOMBRE: #{@nombre} - EDAD: #{@edad} - DNI: #{@dni} COLOR: #{@color} PG: #{@ganadas} E: #{@empatadas}  PP: #{@perdidas} EQUIPO: #{@nombre_equipo}  - PUNTAJE_TOTAL: #{obtener_puntaje}"
	end

end

