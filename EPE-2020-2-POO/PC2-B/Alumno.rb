class Alumno
    attr_accessor :cod, :dni, :nombre, :carrera, :pagos
    
	def initialize(cod, dni, nombre, carrera)
		@cod = cod
		@dni = dni
        @nombre = nombre
        @carrera = carrera
        @pagos = Array.new
    end
    
    def registrarPago(p)
        @pagos.push(p)
    end

    def info
        return "Codigo: #{@cod} - DNI: #{@dni} - #{@nombre} - Carrera: #{@carrera}"
    end    
    
end