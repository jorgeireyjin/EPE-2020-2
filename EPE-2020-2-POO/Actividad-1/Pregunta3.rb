class Paciente
    def initialize(nombre, peso, altura)
        @nombre = nombre
		@peso   = peso.to_f
        @altura = altura.to_f
    end

    def calcularIMC
        @imc = ( @peso / (@altura*@altura) )
        return @imc
    end

    def rpta
        case @imc
            when 0..19
                return "El paciente #{@nombre} se encuentra por debajo de su peso ideal"
            when 20..25
                return "El paciente #{@nombre} se encuentra en peso ideal"
            else
                return "El paciente #{@nombre} se encuentra muy por encima de su peso ideal"
        end

    end

end

#--------------------------------------
# Peso en Kg y altura en mts
#--------------------------------------
p1 = Paciente.new("Anita", 64, 1.63 )
puts "IMC :  %0.2f" % [p1.calcularIMC]
puts "#{p1.rpta}"

p2 = Paciente.new("Carlita", 80, 1.63 )
puts "IMC :  %0.2f" % [p2.calcularIMC]
puts "#{p2.rpta}"

p3 = Paciente.new("Pepito", 20, 1.63 )
puts "IMC :  %0.2f" % [p3.calcularIMC]
puts "#{p3.rpta}"