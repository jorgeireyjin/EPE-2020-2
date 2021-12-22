=begin
Esto falla cuando los m3 son mayores a 200 en la tarifa residencial
Hay una faltante de 17.4 en todos los casos

Debido a que la REDACCION ES ERRONEA Y tiende a confundir
El contrato "residencial" (r) permite que los 28 primeros m3 sean gratis, 
los siguientes 122 se paguen a  tarifa de 2.1 soles 
y a partir del m3 123 en adelante se paguen a 1.5 soles

PAra que funcionen los casos de prueba debe interpretarse como:
primer tramo : de 0 a 28  costo 0.0
segundo tramo de 29 hasta 28+122 m3  costo 2.1
mas alla de los 28+122 m3 el costo es 1.5

Segun esto los casos de prueba deben resultar en  
346.2 pero dice 346.8
481.2 pero dice 481.8
631.2 pero dice 631.8

  print validate(346.80, costo_residencial(210))      
  print validate(481.8, costo_residencial(300))
  print validate(631.8, costo_residencial(400))

Habria que verificar con el profesor.
=end

def costo_residencial(m3)
  total = 0
  for i in 0..m3
	  if i <= 28
      costo = 0.0
    elsif i <= (122 +28)
      costo = 2.1
    else 
      costo = 1.5
    end

    total = total + costo
  end
     
  puts "m3 #{m3} R #{total.round(2)}"
  return total.round(2)
end

def costo_comercial(m3)
  total = 0
  for i in 1..m3
	   if i <= 400
        costo = 1.80
     else 
        costo = 2.5
      end

    total = total + costo
  end
    
  #puts "m3 #{m3} C #{total}"
  return total.round(2)
end

def costo_total(m3, tipo_contrato)
	if tipo_contrato == 'r'
    total = costo_residencial(m3)
  elsif tipo_contrato == 'c'
    total = costo_comercial(m3)
  end

  return total.round(2)
	
end


#--- zona de test ----

def test_costo_residencial
	print validate(25.20, costo_residencial(40))
	print validate(0.0, costo_residencial(27))
	print validate(67.20, costo_residencial(60))    
	print validate(346.80, costo_residencial(210))    	
	print validate(481.8, costo_residencial(300))
	print validate(631.8, costo_residencial(400))
end

def test_costo_comercial
  print validate(180.00, costo_comercial(100)) 
  print validate(270.00, costo_comercial(150)) 
  print validate(720.00, costo_comercial(400)) 
  print validate(845.00, costo_comercial(450)) 
  print validate(1170.00, costo_comercial(580)) 
end

def test_costo_total
  print validate(151.2, costo_total(100, 'r')) 
  print validate(180.0, costo_total(100, 'c'))
  print validate(631.8, costo_total(400, 'r'))
  print validate(1720.0, costo_total(800, 'c'))
  print validate(331.8, costo_total(200, 'r'))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_costo_residencial
  test_costo_comercial
  test_costo_total
  puts " "
end
test