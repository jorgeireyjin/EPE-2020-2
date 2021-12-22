class TipoVehiculo

   attr_accessor :v_marca, :v_modelo, :v_precio

	def initialize(ma, mo, pr)
		@v_marca = ma
		@v_modelo = mo
        @v_precio = pr
    end

end

class Automovil < TipoVehiculo
    attr_accessor :v_asientos

	def initialize(ma, mo, pr, as)
		super(ma, mo, pr)
		@v_asientos = as
    end

    def infoTecnica()
        return "Informacion del Automovil Marca: #{self.v_marca} - Modelo: #{self.v_modelo} - Precio: US$ #{self.v_precio} - Pasajeros: #{@v_asientos}"

    end
end

class Camioneta < TipoVehiculo
    attr_accessor :v_potencia, :v_carga

	def initialize(ma, mo, pr, po, ca)
		super(ma, mo, pr)
		@v_potencia = po
		@v_carga = ca
    end

    def infoTecnica()
        return "Informacion de la Camioneta Marca: #{self.v_marca} - Modelo: #{self.v_modelo} - Precio: #{self.v_precio} - HP: #{@v_potencia} - Cap.Carga: #{@v_carga}"

    end


end