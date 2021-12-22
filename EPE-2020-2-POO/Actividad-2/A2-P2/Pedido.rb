class Pedido
    attr_accessor :cod, :cant, :prio, :monto, :plazo
    
	def initialize(cod, cant, prio, monto)
		@cod = cod
		@cant = cant.to_i
        @prio = prio
        @monto = monto.to_i
        calcular_plazo
    end
    
    def calcular_plazo
        if ( @prio == 'PRIORITARIO' )
            @plazo = 5
        elsif ( @prio == 'INTERMEDIO' )
            @plazo = 15
        elsif ( @prio == 'BAJO' )
            @plazo = 30            
        end
    end

    def info
        return "Codigo #{@cod} - Cantidad: #{@cant} - Prioridad: #{@prio} - Monto: #{@monto} - Plazo: #{@plazo}"
    end    
    
end