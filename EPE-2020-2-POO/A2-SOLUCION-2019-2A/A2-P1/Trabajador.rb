class Trabajador
	attr_accessor :codigo, :nombre, :apellido, :sueldo, :tipo, :bono

	def initialize(codigo, nombre, apellido, sueldo, tipo)
		@codigo = codigo
		@nombre = nombre
		@apellido = apellido
		@sueldo = sueldo
		@tipo = tipo
	end

	def agrega_bono(b)
		@bono = b
	end
	
end

