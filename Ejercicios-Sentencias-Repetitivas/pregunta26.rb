#encoding:UTF-8
def cuantas_repeticiones(numero, digito)
  cant = 0
  while numero > 0
    dig = numero % 10
    numero  = numero / 10

    if digito == dig
      cant = cant + 1
    end
  end

  return cant

end

def digito_que_mas_se_repite(numero)
  mayor = 0
  digito = 0

  for i in 0..9
    cant = cuantas_repeticiones(numero, i)
    if cant > mayor
      mayor = cant
      digito = i
    end
  end

  return digito
end

#--- zona de test ----
def test_digito_que_mas_se_repite
  	print validate(1, digito_que_mas_se_repite(112233445566771))
    print validate(5, digito_que_mas_se_repite(152533455566571))
    print validate(1, digito_que_mas_se_repite(01010011011))
end

def test_cuantas_repeticiones
  	print validate(3, cuantas_repeticiones(112233445566771, 1))
    print validate(2, cuantas_repeticiones(12340567089, 0))
end

def validate (expected, value)
 	expected == value ? "." : "F"
end

def test
  	puts "Test de prueba Practica 2"
  	puts "--------------------------"
  	test_digito_que_mas_se_repite  
  	puts " "
  	test_cuantas_repeticiones  
  	puts " "
end
test