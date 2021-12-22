def calcularDias(cantidad)
  dias = 0
  while cantidad >= 1
    cantidad = cantidad * 0.8
    dias = dias + 1
  end

  return dias

end

def calcularmedicina(dias,cantidad)
  while dias >= 1
    cantidad = cantidad * 0.8
    dias = dias - 1
  end

  return cantidad.round(2)

end

def calculardias2(cantidad,porcentaje)
# 0.10 indica que es el 10%
  cantidad_por_eliminar = cantidad*porcentaje
  dias = 0
  ya_eliminado = 0

  while ya_eliminado < cantidad_por_eliminar
    ya_eliminado = ya_eliminado + cantidad * 0.2
    cantidad = cantidad * 0.8
    dias = dias + 1
  end

  return dias
end

#--- zona de test ----

def test_calcularDias
  print validate(18, calcularDias(50)) 
  print validate(21, calcularDias(100)) 
  print validate(16, calcularDias(30)) 
end

def test_calcularmedicina
  print validate(26.21, calcularmedicina(5,80)) 
  print validate(16.78, calcularmedicina(8,100))
  print validate(25.60, calcularmedicina(3,50)) 
end

def test_calculardias2
  print validate(1, calculardias2(80,0.10)) 
  print validate(2, calculardias2(100,0.30))
  print validate(5, calculardias2(50,0.60)) 
end
def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  puts test_calcularDias
  puts test_calcularmedicina
  puts test_calculardias2
  puts " "
end
test