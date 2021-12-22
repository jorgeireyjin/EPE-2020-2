
def diasDePrestamo(tipoUsuario)
  if tipoUsuario == "Alumno"
    return 7
  elsif tipoUsuario == "Profesor"
    return 15
  elsif tipoUsuario == "Otro"
    return 5
  else
    return 0
  end
end

def incrementoDiario(tipoUsuario)
  if tipoUsuario == "Alumno"
    return 4.5
  elsif tipoUsuario == "Profesor"
    return 7.0
  elsif tipoUsuario == "Otro"
    return 9.5
  else
    return 0.0
  end   
end

def moraInicial(tipoUsuario)
   if tipoUsuario == "Alumno"
    return 5
  elsif tipoUsuario == "Profesor"
    return 10
  elsif tipoUsuario == "Otro"
    return 15
  else
    return 0
  end 
end

def calcularValorTotalMora(tipoUsuario,diasPrestamo)
  diasMulta = diasPrestamo - diasDePrestamo(tipoUsuario) 
 
  if(diasMulta<0)
    return 0
  end
  
  monto = moraInicial(tipoUsuario)
  incremento = incrementoDiario(tipoUsuario)
 
  for i in 1..diasMulta
    monto = monto*(1+incremento/100.0)
  end 
  
  return monto.round(2)

end

#--- zona de test ----

def test_diasDePrestamo
    print validate(7, diasDePrestamo("Alumno")) 
    print validate(15, diasDePrestamo("Profesor")) 
    print validate(5, diasDePrestamo("Otro")) 
end

def test_incrementoDiario
    print validate(4.5, incrementoDiario("Alumno"))
    print validate(7.0, incrementoDiario("Profesor"))
    print validate(9.5, incrementoDiario("Otro"))
end

def test_moraInicial
    print validate(5, moraInicial("Alumno"))
    print validate(10, moraInicial("Profesor"))
    print validate(15, moraInicial("Otro"))
end

def test_calcularValorTotalMora
  print validate(6.51, calcularValorTotalMora("Alumno",13))
  print validate(0.00, calcularValorTotalMora("Alumno",6))
  print validate(15.01, calcularValorTotalMora("Profesor",21))
  print validate(25.86, calcularValorTotalMora("Otro",11))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_diasDePrestamo
  test_incrementoDiario
  test_moraInicial
  test_calcularValorTotalMora
  puts " "
end

test