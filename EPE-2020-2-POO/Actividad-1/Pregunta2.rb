class Curso
    def initialize(codigo, nombre, control, ep, ef, trab)
        @codigo = codigo
        @nombre = nombre
		@control = control.to_f/100
		@ep      = ep.to_f/100
        @ef      = ef.to_f/100
        @trab    = trab.to_f/100
    end

    def calcularPromedio(cl, ep, ef, tr)
        @prom = cl*@control +  ep*@ep + ef*@ef + tr*@trab
        return @prom
    end

    def isAprobado
        if @prom >= 13.0
            return true
        else
            return false
        end
    end

end

c1 = Curso.new("SI-101", "Programacion ORientada a Objetos", 10, 30, 35, 25)

puts "El promedio es : #{c1.calcularPromedio(15,12,13.5,11.5) } "
resultado = c1.isAprobado
if resultado
    puts "Eso es Aprobado !!! FELICITACIONES !!"
else
    puts "Te vas a la Bika ..."
end