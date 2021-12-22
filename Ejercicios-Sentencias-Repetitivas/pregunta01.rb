
def calcularTotal(monto,tiempo)
	tasa = 0.0
	if monto <= 10000
		tasa = 0.04
	elsif monto <= 50000
		tasa = 0.06
	elsif monto <= 100000
		tasa = 0.08
	else
		tasa = 0.1
	end
		
	inicial = monto	
	for i in 1..tiempo
		monto = monto * (1+tasa)
	end

	ganacia = monto - inicial
return ganacia.round(2)
  
end


#--- zona de test ----

def test_calcularTotal
    print validate(1248.64, calcularTotal(10000,3)) 
    print validate(20925.96, calcularTotal(50000,6)) 
    print validate(151817.01, calcularTotal(100000,12)) 
    print validate(427685.68, calcularTotal(200000,12)) 

end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
 
  
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularTotal
  puts " "
end
test