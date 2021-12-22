=begin
Hacer un programa que indique cual es el numero que mas se repite
=end

def numero_que_mas_se_repite(numero)
	nMayorVeces = 0
	nDigito = -1

	num1 = numero
	# Por cada digito del numero
  	while num1 > 0
  		digito = num1 % 10

  		# Buscar ese digito en todo el numero
  		aux = numero
  		cont = 0
  		while aux > 0
  			if digito == aux %10
  				cont = cont + 1
  			end
  			aux = aux / 10
  		end
  		if  cont > nMayorVeces
  			# Guardar el digito que mas se repite hasta el momento
  			nMayorVeces = cont
  			nDigito = digito
  		end

  		num1 = num1 / 10
  	end

    #puts "Numero: #{numero}   Digito: #{nDigito}"
  	return nDigito
end

def test_numero_que_mas_se_repite
    print validate(1, numero_que_mas_se_repite(123456781))
    print validate(5, numero_que_mas_se_repite(152535455565))
    print validate(2, numero_que_mas_se_repite(22221))
    print validate(3, numero_que_mas_se_repite(1112223333))

end

def validate (expected, value)
    expected == value ? "." : "F"

end


def test
    
puts "Test de prueba del programa"

    puts "---------------------------"
    test_numero_que_mas_se_repite
	puts " "

end
test