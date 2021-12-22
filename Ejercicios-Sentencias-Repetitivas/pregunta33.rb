def precio_depreciado(precio_inicial, porcentaje, periodo)
  for i in 1..periodo
    precio_inicial = precio_inicial - precio_inicial * porcentaje / 100.0
  end
  return precio_inicial
end

def ciclo_depreciado(precio_inicial, porcentaje, precio_final)
  contador = 0
  while precio_inicial > precio_final
    precio_inicial = precio_inicial - precio_inicial * porcentaje / 100.0
    contador += 1
  end
 return contador
end


#--------------zona de test-------------------
def test_precio_depreciado
  print validate(81.0, precio_depreciado(100,10,2))
  print validate(31.25, precio_depreciado(250,50,3))
end

def test_ciclo_depreciado
  print validate(12, ciclo_depreciado(100,10,30))
  print validate(3, ciclo_depreciado(250,50,31.25))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_precio_depreciado
  test_ciclo_depreciado
  puts " "
end
test