#encoding:UTF-8
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

def maxDigito(numero)
  mayor_digito = 0
  while numero > 0
    dig = numero % 10
    numero  = numero / 10

    if dig > mayor_digito
      mayor_digito = dig
    end

  end

  return mayor_digito

end

def esIgual(numero)
  suma_par = 0
  suma_impar = 0

  pos = 1
  while numero > 0
    dig = numero % 10
    numero  = numero / 10

    if pos % 2 == 0
      suma_par = suma_par + dig
    else
      suma_impar = suma_impar + dig
    end

  end

  if suma_par == suma_impar
    return "SI"
  else
    return "NO"
  end
  
end

#--- zona de test ----
def test_Pregunta1
  	print validate(3.11, promDigitos(514325431))
  	print validate(2.0, promDigitos(123))
  	print validate(4.43, promDigitos(7163491))
end

def test_Pregunta2
  	print validate(5, maxDigito(514325431))
  	print validate(3, maxDigito(123))
  	print validate(9, maxDigito(7163491))
end

def test_Pregunta3
  	print validate("NO", esIgual(514325431))
  	print validate("NO", esIgual(123))
  	print validate("NO", esIgual(7163491))
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