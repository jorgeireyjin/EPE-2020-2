class Americana < Maquina
    attr_accessor :cod, :serie, :flag, :bandejas, :canales, :ventas
    
	def initialize(cod, serie, flag, bandejas, canales)
        super(cod, serie, bandejas, canales, 20 )
		@flag = flag
        estimarVentas()
    end
    
    def estimarVentas()
        @ventas = self.capacidadTotal * 3.0
        if ( flag )
            @ventas = @ventas*1.25
        end

    end

     def info()
        return "Codigo #{self.cod} - Serie: #{self.serie} - ¿ Acepta TArjeta ?: #{@flag} - bandejas: #{self.bandejas} Canales: #{self.canales} - Capacidad TOtal : #{self.capacidadTotal} - Estimacion de Ventas: #{@ventas}"
    end    
    
end