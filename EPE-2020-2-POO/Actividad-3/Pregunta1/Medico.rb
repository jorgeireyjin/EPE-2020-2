class Medico < Colaborador
    attr_accessor :doc, :nombre, :especialidad, :edad, :horas, :sueldo
    
	def initialize(doc, nombre, especialidad, edad, horas)
        super(doc, nombre, edad)
		@especialidad = especialidad
		@horas = horas
        calculaSueldo()
    end
    
    def calculaSueldo()
        base = 1500
        adic = 0
        case @especialidad
            when "Medicina General" then adic = 3500
            when "Neumologia"   then adic = 4500
            when "Dermatologia" then adic = 5500
            when "Hematologia"  then adic = 6500
            when "Cardiologia"  then adic = 6900
        end

        @sueldo = base + adic + 60*@horas

    end

     def info()
        return "Codigo #{self.doc} - Nombre: #{self.nombre} - Especialidad: #{@especialidad} - Edad: #{self.edad} Horas Extras: #{@horas} - SUELDO: #{@sueldo}"
    end    
    
end