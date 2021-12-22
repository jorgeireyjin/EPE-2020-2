#encoding:UTF-8
def numDigitos(numero)
  cant = 0
  while numero > 0
    dig = numero % 10
    numero  = numero / 10

    cant = cant + 1
  end

  return cant
end

def promDigitos(numero)
  suma = 0
  cant = 0

  while numero > 0
    dig = numero % 10
    numero  = numero / 10

    suma = suma + dig
    cant = cant + 1
  end

  promedio =  suma*1.0 / cant

  return promedio.round(2)

end

def minDigito(numero)
  menor_digito = 999999
  while numero > 0
    dig = numero % 10
    numero  = numero / 10

    if dig < menor_digito
      menor_digito = dig
    end

  end

  return menor_digito
end

#--- zona de test ----
def test_Pregunta1
  	print validate(9, numDigitos(514325431))
  	print validate(3, numDigitos(123))
  	print validate(7, numDigitos(7163491))
end

def test_Pregunta2
  	print validate(3.11, promDigitos(514325431))
  	print validate(2.0, promDigitos(123))
  	print validate(4.43, promDigitos(7163491))
end

def test_Pregunta3
  	print validate(1, minDigito(514325431))
  	print validate(1, minDigito(123))
  	print validate(1, minDigito(7163491))
end

def validate (expected, value)
 	expected == value ? "." : "F"
end

def test
  	puts "Test de prueba"
  	puts "------------------"
  	test_Pregunta1  
  	test_Pregunta2  
  	test_Pregunta3  
  	puts " "

end
test