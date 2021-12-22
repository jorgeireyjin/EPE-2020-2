def calcularPorcInteresUltimoMes(meses)
  tasa = 1

  for i in 1..meses
    # 1 año  = 12 meses
    if i % 36 == 0
      tasa = tasa + 0.5
    end
  end 

  return tasa.round(2)

end

def calcularImpInteresUltimoMes(meses,importe)
  tasa = 0.01
  total = importe
  interes_mes = 0

  for i in 1..meses
    # 1 año  = 12 meses
    if i % 36 == 0
      tasa = tasa + 0.005
    end
    # Primero se verifica la nueva tasa 
    interes_mes = total * tasa
    total = total + interes_mes
  end 

  return interes_mes.round(2)
end

def calcularImporteTotalMesX(meses,importe)
  tasa = 0.01
  total = importe
  interes_mes = 0

  for i in 1..meses
    # 1 año  = 12 meses
    if i % 36 == 0
      tasa = tasa + 0.005
    end
    # Primero se verifica la nueva tasa 
    interes_mes = total * tasa
    total = total + interes_mes
  end 

  return total.round(2)

end

#--- zona de test ----

def test_calcularPorcInteresUltimoMes
    print validate(1.00, calcularPorcInteresUltimoMes(12)) 
    print validate(1.50, calcularPorcInteresUltimoMes(36)) 
    print validate(1.50, calcularPorcInteresUltimoMes(48)) 
    print validate(2.00, calcularPorcInteresUltimoMes(80)) 
end

def test_calcularImpInteresUltimoMes
    print validate(111.57, calcularImpInteresUltimoMes(12,10000))
    print validate(212.49, calcularImpInteresUltimoMes(36,10000))
    print validate(254.06, calcularImpInteresUltimoMes(48,10000))
    print validate(567.36, calcularImpInteresUltimoMes(80,10000))    
end

def test_calcularImporteTotalMesX
    print validate(11268.25, calcularImporteTotalMesX(12,10000)) 
    print validate(14378.52, calcularImporteTotalMesX(36,10000)) 
    print validate(17191.22, calcularImporteTotalMesX(48,10000)) 
    print validate(28935.24, calcularImporteTotalMesX(80,10000)) 
end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  puts test_calcularPorcInteresUltimoMes
  puts test_calcularImpInteresUltimoMes
  puts test_calcularImporteTotalMesX

  puts " "
end
test