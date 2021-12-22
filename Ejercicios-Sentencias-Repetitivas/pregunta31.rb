def mayor(numero1 , numero2)
  if numero1 - numero2 > 0
    return numero1
  else
    return numero2
  end

end

def contadorMultiplos(numero1,numero2)

  if numero1 - numero2 > 0
    mayor = numero1
    menor = numero2
  else
    mayor = numero2
    menor = numero1
  end

  contador = 0
  for i in 1.. mayor
    if i%menor == 0
      contador = contador + 1
    end
  end    
  
  return contador

end	

#--- zona de test ----

def test_mayor
    print validate(9, mayor(9,4)) 
    print validate(23, mayor(23,5))
    print validate(144, mayor(144,6))
    print validate(256, mayor(177,256))
end

def test_contadorMultiplos
    print validate(6, contadorMultiplos(124,20))
	print validate(5, contadorMultiplos(4,20))
	print validate(5, contadorMultiplos(100,20))
	print validate(28, contadorMultiplos(9,256))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  puts "---test_mayor--"
  test_mayor
  puts ""
  puts "---Multiplos---"
  test_contadorMultiplos
  puts " "
end

test