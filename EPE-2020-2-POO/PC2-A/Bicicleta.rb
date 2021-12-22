class Bici
	attr_accessor :mat, :rue, :pla
	def initialize(*a)
		@mat = a[0]
		@rue = a[1]
		@pla = a[2]
	end
end

class Mont < Bici
	attr_accessor :pr

	def initialize(*a)
		super( a[0], a[1], a[2])
		@sus = a[3]
		@precioBase = 1450

		case @sus
			when "Rigida" then @pr = @precioBase + 250
			when "Delantera" then @pr = @precioBase + 295
			when "Doble" then @pr = @precioBase + 600
		end
	end

	def info()
		return "Material #{@mat} Aro: #{@rue} Platos #{@pla} Suspension #{@sus} PRECIO: #{@pr} "
	end
end

class Ruta < Bici
	attr_accessor :pr

	def initialize(*a)
		super( a[0], a[1], a[2])
		@manu = a[3]
		@precioBase = 2500

		case @manu
			when "Drop-bar"    then @pr = @precioBase + 0.05*@precioBase
			when "Regular-bar" then @pr = @precioBase + 0.075*@precioBase
		end		
	end

	def info()
		return "Material #{@mat} Aro: #{@rue} Platos #{@pla} Manubrio #{@manu} PRECIO: #{@pr} "
	end

end

class Urba < Bici
	attr_accessor :pr

	def initialize(*a)
		super( a[0], a[1], a[2])
		@cana = a[3]
		@precioBase = 900

		if ( @cana == true)
			@pr = @precioBase + 115
		else
			@pr = @precioBase
		end

	end

	def info()
		return "Material #{@mat} Aro: #{@rue} Platos #{@pla} CAnasta #{@cana} PRECIO: #{@pr} "
	end

end

class Tienda
	attr_accessor :bs

	def initialize()
		@bs = Array.new
	end

	def registrar(b)
		@bs.push(b)
    end

    def listar()
    	for i in 0..bs.size-1
    		puts "#{bs[i].info() }"
    	end
    end	

    def cantMont()
    	cant = 0
		for i in 0..bs.size-1
    		if ( bs[i].instance_of? Mont) 
    			cant = cant + 1
    		end    	
    	end    	
    	return cant
    end

    def mayorPrecio()
    	mayor = 0
    	pos = 0
		for i in 0..bs.size-1
    		if ( bs[i].pr > mayor) 
    			mayor = bs[i].pr
    			pos = i
    		end    	
    	end    	
    	return bs[pos]
    end
end

t = Tienda.new

b1 = Mont.new("Alumnio", 20, 20, "Rigida")
b2 = Mont.new("Carbono", 20, 20, "Doble")
b3 = Ruta.new("Titanio", 29, 20, "Drop-bar")
b4 = Ruta.new("Alumnio", 29, 20, "Regular-bar")
b5 = Urba.new("Carbono", 26, 12, true)
b6 = Urba.new("Titanio", 29, 10, false)

t.registrar(b1)
t.registrar(b2)
t.registrar(b3)
t.registrar(b4)
t.registrar(b5)
t.registrar(b6)

t.listar()

puts "Cantidad de Montañeras"
puts "#{t.cantMont}"

puts "Bici de mayor precio"
puts "#{t.mayorPrecio().info() }"