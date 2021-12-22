def cantidadDias(m)
	distancia = 0
	dias = 0
	flag = true

	while flag == true
		# lo que avanza de dia
		distancia = distancia + 3
		if ( distancia >= m)
			# si llego a la cima ... salimos
			flag = false
		else
			# si no llego a la cima ... es de noche 
			distancia = distancia - 1.5
		end
		# trasncurre un dia mas
		dias = dias + 1

	end

	return dias 
end

#--- zona de test ----

def test_cantidadDias
    print validate(6, cantidadDias(9.5))
    print validate(7, cantidadDias(12))    
    print validate(1, cantidadDias(3))
    print validate(5, cantidadDias(8))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_cantidadDias
  puts " "
end
test