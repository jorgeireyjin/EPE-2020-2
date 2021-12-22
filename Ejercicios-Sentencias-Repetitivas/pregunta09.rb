def sumadivisores(n)
  suma = 0

  for i in 1..n/2
    if (n%i == 0)
      suma = suma + i
    end
  end

  return suma

end

def sonAmigos?(numero1, numero2)
  if (sumadivisores(numero1) == numero2 ) and (sumadivisores(numero2) == numero1)
    return true
  else
    return false
  end

end

#--- zona de test ----

def test_sumadivisores
    print validate(284, sumadivisores(220))
    print validate(220, sumadivisores(284))    
    print validate(568, sumadivisores(300))
    print validate(512, sumadivisores(568))
end

def test_sonAmigos?
    print validate(true, sonAmigos?(220,284))
    print validate(false, sonAmigos?(300,568))    
    print validate(false, sonAmigos?(12,16))
    print validate(true, sonAmigos?(1184,1210))
end
def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_sumadivisores
  puts " "
  test_sonAmigos?
  puts " "
end
test