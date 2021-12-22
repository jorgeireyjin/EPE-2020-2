def factoresPrimos(n)
	# No se cuenta el 1
	# Solo debemos ir hasta la mitad del numero
	rpta = ''

	if n == 1
		return ''
	else
		hasta = n/2
		divisor = 2
        for divisor in 2..hasta
        	while n%divisor == 0
        		rpta = rpta + divisor.to_s + ' '
        		n = n / divisor
        	end
        end

	end

	return rpta
end

#--- zona de test ----

def test_factoresPrimos
    print validate("2 2 ", factoresPrimos(4))
    print validate("", factoresPrimos(1))    
    print validate("2 2 3 ", factoresPrimos(12))
    print validate("2 2 2 3 3 5 ", factoresPrimos(360))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_factoresPrimos
  puts " "
end
test