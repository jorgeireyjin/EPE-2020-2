def todosDigitosIguales(numero)
  digito = numero%10
  numero = numero / 10
  flag = true

  while numero > 0
    new_digito = numero%10
    numero = numero / 10 
    if digito != new_digito
      flag = false
    end
  end

  return flag

end

def todosDigitosSonSiete(numero)
  flag = true

  while numero > 0
    new_digito = numero%10
    numero = numero / 10 
    if new_digito != 7
      flag = false
    end
  end

  return flag

end

def obtenerGanancia(numero, apuesta)
  #Contar cuantos digitos hay
  n = 0
  while numero > 0
    numero = numero / 10 
    n = n + 1
  end

  # Ahora "n" es la cantidad de digitos
  case n
    when 4  then return apuesta*4
    when 5  then return apuesta*6
    when 8  then return apuesta*10
  end

end

#--- zona de test ----

def test_todosDigitosIguales
    print validate(false, todosDigitosIguales(8733))
    print validate(false, todosDigitosIguales(23334))
    print validate(true, todosDigitosIguales(666666))
end

def test_todosDigitosSonSiete
  print validate(true, todosDigitosSonSiete(7777))
  print validate(true, todosDigitosSonSiete(777777))
  print validate(false, todosDigitosSonSiete(777677))
end

def test_obtenerGanancia
  print validate(120, obtenerGanancia(77777,20))
  print validate(40, obtenerGanancia(7777,10))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_todosDigitosIguales
  test_todosDigitosSonSiete
  test_obtenerGanancia
  puts " "
end

test