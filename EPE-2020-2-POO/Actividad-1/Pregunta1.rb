class Boleta
	def initialize(a, b, c, d)
		@codigo = a
		@fecha = b
                @nombre = c
                @precio = d*0.82
                @igv = d*0.18
	end

	def mostrarVenta
                puts "La Boleta es : "
                puts "CODIGO: #{@codigo} -  FECHA: #{@fecha} - FUNCION: #{@nombre}"
                puts "VALOR (Sin IGV): %0.2f" % [@precio]
                puts "IGV: %0.2f" % [@igv]
                puts "TOTAL DE LA ENTRADA :  %0.2f" % [@precio + @igv]
	end
	
    def modificarPrecio(x)
        puts "Modificando el precio a ... #{x}"
        @precio = x*0.82
        @igv = x*0.18
    end
end

b1 = Boleta.new("0001", "22/10/2020", "Volveremos muy pronto", 30.0 )

# Parte a
b1.mostrarVenta
puts "----------------------"
# Parte b
b1.modificarPrecio(50.0)
puts "----------------------"
b1.mostrarVenta
