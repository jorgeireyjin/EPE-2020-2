class Evento
	   attr_accessor :q, :c
	def initialize(qty, cat)
		@q = qty
		@c = cat
	end
end

class Infantil < Evento
	 attr_accessor :pr
	def initialize(q, c, torta, payaso)
		super(q,c)
		@t = torta
		@p = payaso

		if ( q <= 20)
			@base = 300
		else 
			@base = 300 + 19*(20-q)
		end

		if ( @p == true) 
			@pr = @base + 400			
		else 
			@pr = @base	
		end
		
		if ( c == true)
			@pr = @pr + 20*q
		end
	end

	def info()
        return "Cantidad #{self.q} - Catering #{self.c} - Tema #{@t} - Payaso #{@p} PRecio #{@pr}"
	end
end

class Cumple < Evento
	 attr_accessor :pr
	def initialize(q, c, torta, bebida)
		super(q,c)
		@t = torta
		@b = bebida

		if ( q <= 20)
			@base = 480
		else 
			@base = 480 + 23*(20-q)
		end
		if ( @t == true) 
			@pr = @base + 150			
		else 
			@pr = @base	
		end		

		if ( @b == true) 
			@pr = @pr + 10*q			
		else 
			@pr = @pr	
		end		

		if ( c == true)
			@pr = @pr + 20*q
		end
	end

	def info()
        return "Cantidad #{self.q} - Catering #{self.c} - Torta #{@t} - Bebida #{@b} PRecio #{@pr}"
	end

end

class Integra < Evento
 attr_accessor :pr	
	def initialize(q, c, nombre)
		super(q,c)
		@n = nombre

		if ( q <= 20)
			@base = 590
		else 
			@base = 590 + 35*(20-q)
		end

		if ( c == true)
			@pr = @base + 20*q
		else
			@pr = @base
		end
	end

	def info()
        return "Cantidad #{self.q} - Catering #{self.c} - Nmbre :#{@n} PRecio #{@pr}"
	end

end

class Fiesta
attr_accessor :ev

	def initialize()
		@ev = Array.new
	end

	def registrar(v)
		@ev.push(v)
    end

    def listar()
    	for i in 0..ev.size-1
    		puts "#{ev[i].info() }"
    	end
    end

    def infantiles()
    	suma = 0
    	cant = 0
		for i in 0..ev.size-1
    		if ( ev[i].instance_of? Infantil) 
    			suma = suma + ev[i].pr
    			cant = cant + 1
    		end    	
    	end

    	return (suma*1.0)/cant
    end

    def caro()
    	mayor = 0
    	pos = 0
		for i in 0..ev.size-1
    		if ( ev[i].pr > mayor ) 
    			mayor = ev[i].pr
    			pos = i
    		end    	
    	end    	
    	return ev[pos]
    end

end


f = Fiesta.new

f1 = Infantil.new(10, true, "Pokemon", true)
f2 = Infantil.new(10, false, "Cinderella", false)
f3 = Cumple.new(10, true, true, true)
f4 = Cumple.new(10, false, true, false)
f5 = Integra.new(10, true,"Empresa X")
f6 = Integra.new(10, false,"Empresa Y")

f.registrar(f1)
f.registrar(f2)
f.registrar(f3)
f.registrar(f4)
f.registrar(f5)
f.registrar(f6)

f.listar()

puts "Evento infantiles promedio"
puts "#{f.infantiles()}"
puts "Evento mas caro"
puts "#{f.caro().info() }"
