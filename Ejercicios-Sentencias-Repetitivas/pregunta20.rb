=begin
Esta funcion recibe dos numero enteros y devuelve el maximo comun divisor
USted puede implementar cualquier algoritmo de calculo.
=end
def mcd(n1,n2)
	mcd = 0

	if n1.abs() > n2.abs()
		mayor = n1.abs()
		menor = n2.abs()
	else
		mayor = n2.abs()
		menor = n1.abs()
	end

	while menor > 0
		resto = mayor%menor
		
		mcd = menor
		if resto >  menor
			mayor = resto
		else
			mayor = menor
			menor = resto
		end
	end

return mcd
end

#--- zona del programa principal ----

#--- zona de test ----
def test_mcd
    print validate(4,mcd(8,12))
    print validate(3,mcd(15,27))
    print validate(2,mcd(50,72))
    print validate(4,mcd(-16,20))
    print validate(256,mcd(256,2048))
end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_mcd
  puts ""
end

test
