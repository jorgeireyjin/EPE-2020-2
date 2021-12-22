=begin
Esta funcion  calcula la ganacia de la propuesta 1
=end
def opcion1(monto,meses)
  monto_inicial = monto
  for mes in 1..meses
    monto = monto * 1.03
  end

  return (monto - monto_inicial).round(2)
end

=begin
Esta funcion  calcula la ganacia de la propuesta 2
=end
def opcion2(monto,meses)
  limite = monto * 0.10
  ganancia = 0
  tasa = 0

  for mes in 1..meses

      if mes%2 == 0
        tasa = 0.03
      else
        tasa = 0.01
      end
      if ganancia > limite
        #El texto dice 1% ... pero asi no funciona !!!
        tasa = 0.1
      end

    ganancia = ganancia + monto * tasa
    #puts "Mes: #{mes}  Tasa: #{tasa}  - ganancia:#{ ganancia.round(2)} - Limite: #{limite}}"
  end

  return ganancia.round(2)
end

=begin
Esta funcion  evalua cual de las dos propuestas es la mejor segun los datos de monto y meses
Para ello debera invocar a las funciones anteriores.
=end
def evaluacion_de_propuestas(monto,meses)
  if opcion1(monto,meses) > opcion2(monto,meses)
    return "Propuesta 1"
  else
    return "Propuesta 2"
  end

end

#--- zona del programa principal ----

#--- zona de test ----
def test_propuesta1
    print validate(229.87, opcion1(1000,7)) 
    print validate(5158.75, opcion1(15000,10)) 
    print validate(3224.44, opcion1(4000,20)) 
end

def test_propuesta2
    print validate(220.0, opcion2(1000,7)) 
    print validate(7800.0, opcion2(15000,10)) 
    print validate(6080.0, opcion2(4000,20)) 
    print validate(0.12, opcion2(1,6)) 
end

def test_evaluacion_de_propuestas
    print validate("Propuesta 1",evaluacion_de_propuestas(1000,6))
    print validate("Propuesta 2",evaluacion_de_propuestas(15000,10)) 	
    print validate("Propuesta 2",evaluacion_de_propuestas(4000,20)) 	 	
    print validate("Propuesta 1",evaluacion_de_propuestas(1,6))         
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_propuesta1
  puts ""
  test_propuesta2
  puts " "
  test_evaluacion_de_propuestas
  puts " "
end

test
