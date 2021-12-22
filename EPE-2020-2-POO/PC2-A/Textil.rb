class Prenda
   attr_accessor :precioBase

	def initialize(*a)
		@ma = a[0]
		@ta = a[1]
		@co = a[2]

		case @ma
		when "Algodon" then @precioBase = 15
		when "Linio" then @precioBase = 10
		when "Cuero" then @precioBase = 20
		end
  end

end

class Polo < Prenda
attr_accessor :pr

	def initialize(a, b, c, d, e)
		super(a, b, c)
		@tipomanga = d
		@bolsillo = e

		case @tipomanga
			when "Corta" then @pr = precioBase + 3.5
			when "Larga" then @pr = precioBase + 4.8	
		end				
			
    end

    def detalle()
        return "Marca: #{@ma} - Talla: #{@mo} - Color: #{@co} - Tipo Manga: #{@tipomanga} Bolsillo: #{@bolsillo} PRECIO: #{@pr}"

    end
end

class Casaca < Prenda
attr_accessor :pr
	def initialize(a, b, c, d, e)
		super(a, b, c)
		@tipocierre= d
		@capucha= e

		if (@capucha == true)
			@pr = precioBase + 0.12*precioBase
		else
			@pr = precioBase
		end
    end

    def detalle()
        return "Marca: #{@ma} - Talla: #{@mo} - Color: #{@co} - Tipo Cierre: #{@tipocierre} Capchuca: #{@capucha} PRECIO: #{@pr}"

    end
end

class Pantalon < Prenda
	attr_accessor :pr

	def initialize(a, b, c, d)
		super(a, b, c)
		@tipocorte= d

		case @tipocorte
		when "regular" then  @pr = precioBase + 3.7
		when "slim" then  @pr = precioBase + 2.5
		when "fit" then  @pr = precioBase + 4.5
		end

    end

    def detalle()
        return "Marca: #{@ma} - Talla: #{@mo} - Color: #{@co} - Tipo Corte: #{@tipocorte} PRECIO #{@pr}"

    end
end


class Tienda
	attr_accessor :ps

	def initialize()
		@ps = Array.new
	end

	def registrar(p)
		@ps.push(p)
    end

	def listar()
		for i in 0..@ps.size-1
			puts "#{@ps[i].detalle() }"
		end
	end

 def promedioPrecioPolo()
	total = 0    
	cant = 0	
	for i in 0..@ps.size-1		
		if ( @ps[i].instance_of? Polo )
    			total=  total +  @ps[i].pr
    			cant = cant + 1
    	end
	end 
    return (total*1.0)/cant	
end

   def menorPrecio()
      	posicion = 0
    	menor = 999999
    	for i in 0..@ps.size-1
    		if ( ps[i].pr < menor)
    			menor = @ps[i].pr
    			posicion = i
    		end
    	end

    	return @ps[posicion]
    end

end

#*****************************************
t = Tienda.new


puts "Registrar"
p1 = Polo.new("Algodon","Talla A", "Color A", "Corta",  "Bolsilo")
p2 = Polo.new("Linio","Talla B", "Color B", "Corta",  "No BOlsillo")
p3 = Casaca.new("Cuero","Talla C", "Color C", "Nylon", true)
p4 = Casaca.new("Algodon","Talla D", "Color D", "Nylon", false)
p5 = Pantalon.new("Linio","Talla E", "Color E", "regular")
p6 = Pantalon.new("Cuero","Talla F", "Color F", "fit")
t.registrar(p1)
t.registrar(p2)
t.registrar(p3)
t.registrar(p4)
t.registrar(p5)
t.registrar(p6)


puts "---------------------"
puts "Listado"
t.listar()
puts "---------------------"


puts "---------------------"
puts "PRomedio precio POLOS: "
puts "#{ t.promedioPrecioPolo() }"
puts "---------------------"

puts "---------------------"
puts "Prenda Menor precio: "
puts "#{ t.menorPrecio().detalle() }"
puts "---------------------"
t.listar()