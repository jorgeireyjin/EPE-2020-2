class Maquina
    attr_accessor :cod, :serie, :bandejas, :canales, :cap, :capacidadTotal

	def initialize(cod, serie, bandejas, canales, cap )
		@cod = cod
		@serie = serie
        @bandejas = bandejas
        @canales = canales
        @cap = cap
        @capacidadTotal = @bandejas * @canales * cap
    end
    
     def info()
        return "Doc #{@doc} - Nombre: #{@nombre} - Edad: #{@edad} "
    end    
    
end