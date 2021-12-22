class Colaborador

	attr_accessor :v_dni, :v_nombre, :v_edad

	def initialize(dni, nombre, edad)
		@v_dni = dni
		@v_nombre = nombre
        @v_edad = edad
    end
end


class TCompleto < Colaborador
	attr_accessor :v_sueldo

	def initialize(dni, nombre, edad, base, antig)
		super(dni, nombre, edad)
		@v_sueldoBase = base
		@v_antig = antig
		generaPlanilla()
    end

    def generaPlanilla()
            if ( @v_antig >= 5 and @v_antig < 10 )
                bono = 1500
            elsif ( @v_antig >= 10 and @v_antig < 15 )
                bono = 2500
            elsif ( @v_antig >= 15 and @v_antig < 20 )
                bono = 3500
            elsif  ( @v_antig >= 20 )
                bono = 4000
            end

    	@v_sueldo = @v_sueldoBase + bono
    end

    def datos()
        return "El Colaborador profesor TC con DNI: #{self.v_dni} - Nombre: #{self.v_nombre} - Edad: #{self.v_edad} - Sueldo Base: #{@v_sueldoBase} - Antiguedad: #{@v_antig} - Sueldo Total: #{@v_sueldo}"
    end
end


class TParcial < Colaborador
	attr_accessor :v_sueldo

	def initialize(dni, nombre, edad, especialidad, horas, costoHora)
		super(dni, nombre, edad)
		@v_especialidad = especialidad
		@v_horas = horas
		@v_costoHora = costoHora
		@v_sueldo = @v_costoHora * @v_horas
    end

    def datos()
       return "El colaborador Profesor TP DNI: #{self.v_dni} - Nombre: #{self.v_nombre} - Edad: #{self.v_edad} - Especialidad: #{@v_especialidad} - Horas Dictadas: #{@v_horas} - Costo x Hora: #{@v_costoHora} - Sueldo Total: #{@v_sueldo}"
    end

end

class Administrativo < Colaborador
	attr_accessor :v_sueldo

	def initialize(dni, nombre, edad, sueldo)
		super(dni, nombre, edad)
		@v_sueldoBase = sueldo
		generaPlanilla(edad)
    end

    def generaPlanilla(edad)
    		if ( edad >= 35 and edad < 55) 
    		 	bono = 0.15*@v_sueldoBase
    		elsif ( edad >= 55)
    			bono = 0.25*@v_sueldoBase
    		else 
    			bono = 0
    		end

    	@v_sueldo = @v_sueldoBase + bono
    end

    def datos()
       return "El colaborador Administrativo DNI: #{self.v_dni} - Nombre: #{self.v_nombre} - Edad: #{self.v_edad} - - Sueldo Base: #{@v_sueldoBase} - Sueldo: #{@v_sueldo}"
    end	

end