require "./Pedido"
require "./Recepcion"

class Empresa
	attr_accessor :pedidos , :recepciones

	def initialize()
		@pedidos = Array.new
        @recepciones = {}
	end

	def registrarPedido(p)
		@pedidos.push(p)
    end

    def registrarRecepcionPedido(recepcion, pedido)
        # Registro el codigo recepcionado
        # Codigos tiene todos las recepciones
        @recepciones[pedido.cod] = recepcion

    end

    def listarFueraPlazo
        # Recorrer el diccionario++
        codigos = @recepciones.keys

        for i in 0..@pedidos.size-1
            cod = @pedidos[i].cod
            recep = @recepciones[cod]
            if ( recep == nil) 
                next
            end
            if ( recep.dias > @pedidos[i].plazo )
                puts "Pedido fuera de plazo #{@pedidos[i].info} - RECEPCION: #{recep.info}"
            end
        end
    end

    def listarPendientesRecepcion
        for i in 0..@pedidos.size-1
            cod = @pedidos[i].cod
            if ( !@recepciones.has_key?(cod) ) 
                puts "Pedido pendiente de recepcion #{@pedidos[i].info}"
            end
        end
    end
    
end

puts "*********I N I C I O ***************"

empresa = Empresa.new

p01 = Pedido.new('001',1, "BAJO",100)
p02 = Pedido.new('002',2, "BAJO",100)
p03 = Pedido.new('003',3, "BAJO",100)
p04 = Pedido.new('004',4, "BAJO",100)
p05 = Pedido.new('005',5, "INTERMEDIO",100)
p06 = Pedido.new('006',6, "INTERMEDIO",100)
p07 = Pedido.new('007',7, "INTERMEDIO",100)
p08 = Pedido.new('008',8, "PRIORITARIO",100)
p09 = Pedido.new('009',9, "PRIORITARIO",100)
p10 = Pedido.new('010',10, "PRIORITARIO",100)

r01 = Recepcion.new('001',10)
r02 = Recepcion.new('002',31)
r05 = Recepcion.new('005',10)
r06 = Recepcion.new('006',16)
r08 = Recepcion.new('008',1)
r09 = Recepcion.new('009',5)
r10 = Recepcion.new('010',6)

## REgistrar pedidos
puts "--- parte (a) ---"
empresa.registrarPedido(p01)
empresa.registrarPedido(p02)
empresa.registrarPedido(p03)
empresa.registrarPedido(p04)
empresa.registrarPedido(p05)
empresa.registrarPedido(p06)
empresa.registrarPedido(p07)
empresa.registrarPedido(p08)
empresa.registrarPedido(p09)
empresa.registrarPedido(p10)

## REgistrar recepciones
puts "--- parte (b) ---"
empresa.registrarRecepcionPedido(r01,p01)
empresa.registrarRecepcionPedido(r02,p02)
empresa.registrarRecepcionPedido(r05,p05)
empresa.registrarRecepcionPedido(r06,p06)
empresa.registrarRecepcionPedido(r08,p08)
empresa.registrarRecepcionPedido(r09,p09)
empresa.registrarRecepcionPedido(r10,p10)

puts "--- parte (c) ---"
empresa.listarFueraPlazo

puts "--- parte (d) ---"
empresa.listarPendientesRecepcion
