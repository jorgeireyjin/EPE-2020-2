class Colaborador
    attr_accessor :doc, :nombre, :edad

	def initialize(doc, nombre, edad)
		@doc = doc
		@nombre = nombre
        @edad = edad
    end
    
     def info()
        return "Doc #{@doc} - Nombre: #{@nombre} - Edad: #{@edad} "
    end    
    
end