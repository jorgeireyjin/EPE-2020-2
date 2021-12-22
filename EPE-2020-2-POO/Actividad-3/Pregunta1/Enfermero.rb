class Enfermero < Colaborador
    attr_accessor :doc, :nombre, :edad, :comisiones, :sueldo
    
	def initialize(doc, nombre, edad, comisiones)
        super(doc, nombre, edad)
		@comisiones = comisiones
		calculaSueldo()
    end

    def calculaSueldo()
        base = 1900

        @sueldo = base + @comisiones

    end


    def info
        return "Codigo #{self.doc} - Nombre: #{self.nombre} - Edad: #{self.edad}  Comisiones: #{@comisiones}  - SUELDO: #{@sueldo}"

    end  
    
end