def calcularAlquiler(decodificador)
  if decodificador == 1
    precio = 20
  elsif decodificador == 2
    precio = 18
  else
    precio = 12
  end

  return precio
end

def calcularCostoPartidos(partidos)
  costo = 0
  for i in 1..partidos
    if i <= 48
      costo = costo + 2
    elsif i > 48 and i <= 56
      costo = costo + 3
    elsif i > 56 and i <= 60
      costo = costo + 4
    elsif i > 60 and i <= 62
      costo = costo + 5
    elsif i > 62 and i <= 63
      costo = costo + 10
    else
      costo = costo + 20
    end
  end

  return costo
end

def calcularTotal(partidos, decodificador)
  return calcularCostoPartidos(partidos) + calcularAlquiler(decodificador)
end

#--- zona de test ----

def test_calcularAlquiler
  print validate(12, calcularAlquiler(4)) 
	print validate(20, calcularAlquiler(1)) 
	print validate(18, calcularAlquiler(2)) 
end

def test_calcularCostoPartidos
  print validate(50, calcularCostoPartidos(25)) 
	print validate(105, calcularCostoPartidos(51)) 
	print validate(132, calcularCostoPartidos(59)) 
	print validate(176, calcularCostoPartidos(64)) 
end

def test_calcularTotal
  print validate(62, calcularTotal(25, 4)) 
	print validate(125, calcularTotal(51, 1)) 
	print validate(150, calcularTotal(59, 2)) 
  print validate(196, calcularTotal(64, 1)) 
end

def validate (expected, value)
  expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularAlquiler
  test_calcularCostoPartidos
  test_calcularTotal
  puts " "
  
end
test