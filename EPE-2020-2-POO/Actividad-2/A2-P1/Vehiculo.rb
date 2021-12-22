class Vehiculo
    attr_accessor :placa, :anho, :capacidad, :clasif
    
	def initialize(placa, anho, capacidad)
		@placa = placa
		@anho = anho.to_i
        @capacidad = capacidad
        clasificacion
	end

    def clasificacion
        if ( @anho >= 2015 )
            @clasif = "MODERNO"
        elsif ( @anho >= 2000 and @anho < 2015 )
            @clasif = "NORMAL"
        elsif ( @anho < 2000)
            @clasif = "ANTIGUO"
        end
    end

    def info
        return "Placa #{@placa} - Año: #{@anho} - Capacidad: #{@capacidad}" 
	end
	
end


