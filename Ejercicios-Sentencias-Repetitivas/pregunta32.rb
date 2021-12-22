def CostoTransporte(mes)
  costo=0.0
  case mes
    when 9,10 then   costo=1.02
    when 1,5,12 then costo=1.04
    when 11,4 then   costo=1.03
    when 2,8 then  costo=1.05 
    when 3,7 then  costo=1.06
    when 6 then    costo=1.09
  end 

  return costo  	
end

def VarPrecio (mes)
  valor=0.0
  case mes
    when 1,3 then valor=0.94
    when 2 then  valor=0.92
    when 4,10,12 then valor=1.04
    when 5 then valor=1.02 
    when 6 then  valor=1.1
    when 7,8 then valor=1.11
    when 9,11 then valor=1.03  
  end 
  return valor
end

def mesMejorRentabilidad(costoprod)
  es=0
  mayor=0
  for i in 1..12
    costo=CostoTransporte(i)
    precio=VarPrecio(i)
    rentabilidad=3500*precio-1800*costo-3500*costoprod/100
    if mayor<= rentabilidad
      mayor=rentabilidad
      mes=i
    end 
  end
  return mes
end

#--- zona de test ----

def test_CostoTransporte
	print validate(1.06, CostoTransporte(3)) 
	print validate(1.04, CostoTransporte(5))
	print validate(1.05, CostoTransporte(8))
	print validate(1.03, CostoTransporte(11))
end  
def test_Precio
    print validate(1.03, VarPrecio(11))
    print validate(0.92, VarPrecio(2))
    print validate(1.11, VarPrecio(7))
   print validate(1.03, VarPrecio(11))
end
 def test_MejorRentabilidad
# 40% del precio de mercado es el costo de produccion
  print validate(8, mesMejorRentabilidad(40))
 #el costo de produccion es 20% del precio
 print validate(8, mesMejorRentabilidad(20))
end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  puts "---Prueba Costo--"
  test_CostoTransporte
  puts ""
  puts "---prueba Precio---"
  test_Precio
  puts " "
  puts "---prueba mes mejor rentabilidad---"
  test_MejorRentabilidad
end

test