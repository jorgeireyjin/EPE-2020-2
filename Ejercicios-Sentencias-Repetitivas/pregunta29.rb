#encoding:UTF-8
# dado el tipo de plan, devuelve la tarifa a pagar 
def tarifa_contratada(plan)
 case plan
    when "MiVivienda" then  tarifa = 20
    when "TechoPropio" then tarifa = 30
    when "Residencial" then tarifa = 50
    when "Comercial" then tarifa = 100    
  end
  
  return tarifa
end

#dado un tipo de plan devuelva la cantidad de m3  contratados 
def tope_del_plan(plan)
  case plan
    when "MiVivienda" then datos = 10
    when "TechoPropio" then  datos = 10
    when "Residencial" then  datos = 20
    when "Comercial" then  datos = 40    
  end
  
  return datos 
end

# dado un plan contratado y el consumo actual en m3, devuelve el monto a pagar 
def monto_a_pagar(plan, consumo_en_m3)
  monto = tarifa_contratada(plan)
  limiteM3 = tope_del_plan(plan)

  if consumo_en_m3 <= limiteM3
    return monto.round(2)
  else
    # Calcular cuanto mas hay que agregar al montp
      for i in (limiteM3+1)..consumo_en_m3
        if i >=(limiteM3+1) && i <= 50
          monto = monto + 1.5
        elsif i >= 51 && i <= 70
          monto = monto + 2.5
        elsif i >= 71 && i <= 80
          monto = monto + 3.5
        else
          monto = monto + 5.0
        end
      end #- del For

  end  #  del Else

  return monto.round(2)
end

#--- zona de test ----
def test_tarifa_contratada
  	print validate(20, tarifa_contratada("MiVivienda"))
    print validate(30, tarifa_contratada("TechoPropio"))
    print validate(50, tarifa_contratada("Residencial"))
    print validate(100, tarifa_contratada("Comercial"))
end

def test_tope_del_plan
    print validate(10, tope_del_plan("MiVivienda"))
    print validate(10, tope_del_plan("TechoPropio"))
    print validate(20, tope_del_plan("Residencial"))
    print validate(40, tope_del_plan("Comercial"))
end

def test_monto_a_pagar
  	print validate(82.5, monto_a_pagar("MiVivienda",  51))
    print validate(92.5, monto_a_pagar("TechoPropio",  51))
    print validate(180.0, monto_a_pagar("Residencial",  80))
    print validate(800.0, monto_a_pagar("Comercial",  200))

end

def validate (expected, value)
 	expected == value ? "." : "F"
end

def test
  	puts "Test de prueba Practica 2 / Pregunta 1"
  	puts "--------------------------------------"
  	test_tarifa_contratada  
  	puts " "
    test_tope_del_plan
    puts " "
  	test_monto_a_pagar  
  	puts " "
end

# Programa Principal
test