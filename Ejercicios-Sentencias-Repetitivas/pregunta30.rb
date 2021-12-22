=begin
Este test tiene un error
print validate("Pares", MayorSuma(5432456643237))

Debe salir Impares
=end
def ConteoYPromedio(numero)
  numero_original = numero
  suma = 0
  cant = 0

  #Obtener promedio
  while numero > 0
    dig = numero%10
    numero = numero / 10

    suma = suma + dig
    cant = cant +1
  end

  promedio = suma*1.0 / cant

  # ahora contar cuantos superan el promedio
  cant = 0
  while numero_original > 0
    dig = numero_original%10
    numero_original = numero_original / 10

    if dig.to_f > promedio
      cant = cant +1
    end
  end
	
  return cant
end

def MayorSuma(numero)
  numero_original = numero
  suma_par = 0
  suma_imp = 0

  pos = 1
 while numero > 0
    dig = numero%10
    numero = numero / 10

    if pos%2 == 0
      suma_par = suma_par + dig
    else
      suma_imp = suma_imp + dig      
    end

    pos = pos + 1
  end
	
  #puts "Numero: #{numero_original} - Suma par: #{suma_par} - Suma impar: #{suma_imp}"
  if suma_par > suma_imp
    return "Pares"
  else
    return "Impares"    
  end

end

#--- zona de test ----

def test_ConteoYPromedio
    print validate(5, ConteoYPromedio(5432456643237)) 
    print validate(12, ConteoYPromedio(64454638675432346636654)) 
    print validate(10, ConteoYPromedio(7643993542359998762)) 
    print validate(3, ConteoYPromedio(124325523))
end

def test_MayorSuma
    print validate("Pares", MayorSuma(5432456643237))
    print validate("Pares", MayorSuma(64454638675432346636654))
    print validate("Impares", MayorSuma(7643993542359998762))
    print validate("Impares", MayorSuma(124325523))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  puts "---Prueba conteo y promedio--"
  test_ConteoYPromedio
  puts ""
  puts "---prueba Mayor suma par impar---"
  test_MayorSuma
  puts " "
end

test