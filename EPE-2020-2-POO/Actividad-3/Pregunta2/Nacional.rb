class Nacional < Maquina
    attr_accessor :doc, :nombre, :edad, :comisiones, :sueldo
    
    def initialize(cod, serie, color, bandejas, canales)
        super(cod, serie, bandejas, canales, 10 )
        @color = color
    end


    def info
        return "Codigo #{self.cod} - Serie: #{self.serie} - Color: #{@color} - bandejas: #{self.bandejas} Canales: #{self.canales} - Capacidad TOtal : #{self.capacidadTotal}"
    end  
    
end