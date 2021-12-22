class Recepcion
    attr_accessor :codOrig, :dias
    
	def initialize(codOrig, dias)
        @codOrig = codOrig
        @dias = dias
    end

    def info
        return "Codigo #{@codOrig} - Dias: #{@dias}"
    end  
    
end