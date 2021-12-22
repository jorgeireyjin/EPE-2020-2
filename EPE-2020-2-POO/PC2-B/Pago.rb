class Pago
    attr_accessor :cod, :fecha, :concepto, :monto, :estado
    
	def initialize(cod, fecha, concepto, monto, estado)
        @cod = cod
        @fecha = fecha
        @concepto = concepto
        @monto = monto
        @estado = estado
    end

    def info
        return "#{@cod} - #{@fecha} - #{@concepto} - S/.#{@monto} - #{@estado}"
    end  
    
end