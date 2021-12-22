=begin
LA REDACCION DEL CASO ESTA TERRIBLE !!!!
=end

#encoding:UTF-8
def tarifa_plan(plan)
  case plan
    when 'Light' then return 20
    when 'MiniMega' then return 30
    when 'MegaMix' then return 50
    when 'SuperTera' then return 100
  end

end

def plan_de_datos(plan)
  case plan
    when 'Light' then return 50
    when 'MiniMega' then return 250
    when 'MegaMix' then return 640
    when 'SuperTera' then return 2048
  end

end

def monto_a_pagar(plan, consumo_en_Mb)
  total = tarifa_plan(plan)
  mb = plan_de_datos(plan)

  if consumo_en_Mb > mb
    exceso = consumo_en_Mb - mb
  else 
    exceso = 0
  end

 for i in 1..exceso
    if i + mb  > 1024
          total = total + 0.55
    elsif i + mb  >= 501 and i + mb <= 1024
          total = total + 0.50
    elsif i + mb >= 101 and i + mb <= 500
          total = total + 0.25
    elsif i + mb <= 100 
          total = total + 0.1
    end
 end
  
  return total.round(2)
end

#--- zona de test ----
def test_tarifa_plan
  	print validate(20, tarifa_plan("Light"))
    print validate(30, tarifa_plan("MiniMega"))
    print validate(50, tarifa_plan("MegaMix"))
    print validate(100, tarifa_plan("SuperTera"))
end

def test_plan_de_datos
    print validate(50, plan_de_datos("Light"))
    print validate(250, plan_de_datos("MiniMega"))
    print validate(640, plan_de_datos("MegaMix"))
    print validate(2048, plan_de_datos("SuperTera"))
end

def test_monto_a_pagar
  	print validate(20.1, monto_a_pagar("Light",  51))
    print validate(50.0, monto_a_pagar("MegaMix",  40))
    print validate(80.0, monto_a_pagar("MegaMix",  700))
    print validate(891.30, monto_a_pagar("MiniMega",  2000))

end

def validate (expected, value)
 	expected == value ? "." : "F"
end

def test
  	puts "Test de prueba Practica 2"
  	puts "--------------------------"
  	test_tarifa_plan  
  	puts " "
    test_plan_de_datos
    puts " "
  	test_monto_a_pagar  
  	puts " "
end

# Programa Principal
test