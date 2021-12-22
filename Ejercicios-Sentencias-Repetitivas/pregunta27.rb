#encoding:utf-8
def determinarcosto(mes, precio_actual)
  for i in 1..mes
    case i
      when 1,4,7,10
        precio_actual = precio_actual + precio_actual*0.15
      when 2,3,5,6
        precio_actual = precio_actual - precio_actual*0.03
      when 8,9,11,12 
        precio_actual = precio_actual - precio_actual*0.02
    end 
  end
  return precio_actual.round(2)
end

def determinartransporte(mes, cantidad_contenedores)
  case mes
    when 1,2,4,7,9,10 then costo = 1200
    when 3,5,6,8,11,12 then costo = 1800
    else costo = 0
  end

  return costo * cantidad_contenedores
end

def determinartotal(mes, precio_actual,cantidad_contenedores)
  trigo = determinarcosto(mes, precio_actual)
  trans = determinartransporte(mes, cantidad_contenedores)

  return trigo + trans

end

#--- zona del programa principal ----

#--- zona de test ----
def test_determinarcosto
    print validate(142.82, determinarcosto(12, 100.0)) 
    print validate(144.84, determinarcosto(5, 120.0)) 
    print validate(151.48, determinarcosto(3, 140.0)) 
end

def test_determinartransporte
    print validate(1800.0, determinartransporte(12, 1)) 
    print validate(3600.0, determinartransporte(5, 2)) 
    print validate(12000.0, determinartransporte(4, 10)) 
end

def test_determinartotal
    print validate(18142.82,  determinartotal(12, 100.0, 10)) 	
    print validate(14544.84,  determinartotal(5, 120.0, 8)) 	
    print validate(9145.14,  determinartotal(8, 110.0, 5)) 	
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_determinarcosto
  puts ""
  test_determinartransporte
  puts " "
  test_determinartotal
end
test
