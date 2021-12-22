=begin
APRENDAN A REDACTAR BIEN !!!!

El producto ofrece una tasa especial que va creciendo cada 4 meses. 

Por ejemplo, si el cliente recibe una tasa inicial de 2% mensual, al cuarto mes se le aumentará la tasa a 3%, luego después de 4 meses, es decir al mes 7 se le incrementará a 4%, luego al mes 10 se le incrementará a 5% y así sucesivamente. 

=end
def calcularUltimaTasa(monto, tasa, meses)

	cada_3_meses = 0
	for i in 1..meses
		if ( i == 4 )
			tasa = tasa + 0.01
		elsif i > 4
			cada_3_meses = cada_3_meses + 1
		end

		if cada_3_meses == 3
			tasa = tasa + 0.01
			cada_3_meses = 0
		end

	end

	return tasa
end

def calcularInteresTotal(monto, tasa, meses)
	intereses_acum = 0
	cada_3_meses = 0

	for i in 1..meses
		if ( i == 4 )
			tasa = tasa + 0.01
		elsif i > 4
			cada_3_meses = cada_3_meses + 1
		end

		if cada_3_meses == 3
			tasa = tasa + 0.01
			cada_3_meses = 0
		end

		intereses_acum = intereses_acum + monto * tasa

		monto = monto + monto*tasa
	end

	return intereses_acum.round(2)
end

def calcularImporteTotal(monto, tasa, meses)
	cada_3_meses = 0

	for i in 1..meses
		if ( i == 4 )
			tasa = tasa + 0.01
		elsif i > 4
			cada_3_meses = cada_3_meses + 1
		end

		if cada_3_meses == 3
			tasa = tasa + 0.01
			cada_3_meses = 0
		end

		monto = monto + monto*tasa
	end

	return monto.round(2)

end


#--- zona de test ----

def test_calcularUltimaTasa        
	print validate(0.03,calcularUltimaTasa(50000.00,0.02,4))
	print validate(0.03,calcularUltimaTasa(80000.00,0.01,7))
	print validate(0.04,calcularUltimaTasa(60000.00,0.03,5))
	print validate(0.07,calcularUltimaTasa(100000.00,0.04,10))
end

def test_calcularInteresTotal
	print validate(4652.21,calcularInteresTotal(50000.00,0.02,4))
	print validate(10093.17,calcularInteresTotal(80000.00,0.01,7))
	print validate(10913.61,calcularInteresTotal(60000.00,0.03,5))
	print validate(65946.96,calcularInteresTotal(100000.00,0.04,10))
end

def test_calcularImporteTotal
	print validate(54652.21,calcularImporteTotal(50000.00,0.02,4))
	print validate(90093.17,calcularImporteTotal(80000.00,0.01,7))
	print validate(70913.61,calcularImporteTotal(60000.00,0.03,5))
	print validate(165946.96,calcularImporteTotal(100000.00,0.04,10))
end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularUltimaTasa
  puts " "
  test_calcularInteresTotal
  puts " " 
  test_calcularImporteTotal 	
  puts " "
end
test


