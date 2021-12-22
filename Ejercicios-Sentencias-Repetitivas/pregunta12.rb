def calcularimporteaPagar(meses, cuota)
  importe_a_pagar = 0
  for i in 1..meses
    importe_a_pagar = importe_a_pagar + cuota
    cuota = cuota*2
  end

puts "#{importe_a_pagar}"
  return importe_a_pagar
end

def calcularcantidadmeses(importe, cuota)
  importe_a_pagar = 0
  meses = 0
  while importe_a_pagar  < importe
      importe_a_pagar = importe_a_pagar + cuota
     cuota = cuota * 2
     meses = meses + 1
  end

  return meses
end

#--- zona de test ----
def test_calcularimporteaPagar
    print validate(98301.00, calcularimporteaPagar(15, 3)) 
	print validate(2046.00, calcularimporteaPagar(10, 2))
	print validate(4095.00, calcularimporteaPagar(12, 1))
    print validate(1275.00, calcularimporteaPagar(8, 5))
end

def test_calcularcantidadmeses
    print validate(9, calcularcantidadmeses(2000, 4.00))
	print validate(10, calcularcantidadmeses(1000, 1.00))
	print validate(8, calcularcantidadmeses(500, 3.00))
    print validate(7, calcularcantidadmeses(200, 3.00))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  puts test_calcularimporteaPagar
  puts test_calcularcantidadmeses
  puts " "
end
test