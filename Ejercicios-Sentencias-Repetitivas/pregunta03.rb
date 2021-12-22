=begin
Dice : Si el dígito resultante es mayor que 10, solo se debe registrar el último dígito.
Debe decir: Si el dígito resultante es mayor o IGUAL que 10, solo se debe registrar el último dígito.
=end

def encriptarnumero(numero, digito)
	cadena = numero.to_s
	rpta = ''

	for i in 0..cadena.size-1
		num =  cadena[i].to_i
		num = num + digito
		if  num >= 10
			num = num % 10
		end

		rpta = rpta + num.to_s
	end

	#puts "#{numero}  - Encript: #{rpta} "
	return rpta.to_i

end

def compararnumeros(numero1, numero2, digito)
	if numero1 == encriptarnumero(numero2,digito)
		return "abierto"
	else
		return "cerrado"
	end

end

def test_encriptarnumero
	print validate(92108876, encriptarnumero(47653321,5))
	print validate(59781690, encriptarnumero(15347256,4))
	print validate(80973154, encriptarnumero(68751932,2))
	print validate(68710954, encriptarnumero(35487621,3))
	print validate(96439812, encriptarnumero(29762145,7))
end

def test_compararnumeros
	print validate("abierto", compararnumeros(92108876,47653321,5))
	print validate("abierto", compararnumeros(59781690,15347256,4))
	print validate("cerrado", compararnumeros(80913157,68751932,2))
	print validate("cerrado", compararnumeros(68710954,35487621,4))
	print validate("abierto", compararnumeros(96439812,29762145,7))
end

def validate (expected, value)
	expected == value ? "." : "F"
end

def test
	puts "Test de prueba del programa"
	puts "---------------------------"
	test_encriptarnumero
	puts " "
	test_compararnumeros
	puts " "
end

test