=begin
  Esta funcion calcula el digito verificador de un RUC
=end
def obtener_digito_verificador(ruc)

  suma = 0
  #eliminar digito
  ruc = ruc/10

  multi = 2
  while ruc > 0
    digito = ruc%10
    ruc = ruc/10
    suma = suma + digito*multi
    multi = multi + 1

    if multi > 7
      multi = 2
    end
  end

  resto = suma % 11
  verificador = 11 -resto

end

=begin
  Esta funcion recibe un numero de RUC y verifica si es verdadero ono
  Devuelve True si es correcto 
  Debe invocar a la funcion anterior para validar el digito verificador 
=end
def ruc_es_valido(ruc)
  verificador = obtener_digito_verificador(ruc)

  digito = ruc%10

  if verificador == digito
    return true
  else
    return false
  end

end


#--- zona del programa principal ----

#--- zona de test ----

def test_obtener_digito_verificador
    print validate(5, obtener_digito_verificador(20131312955)) 
    print validate(4, obtener_digito_verificador(20601411734)) 
    print validate(9, obtener_digito_verificador(20206031949)) 
    print validate(8, obtener_digito_verificador(20368534928)) 
    print validate(7, obtener_digito_verificador(20175031627)) 
    print validate(1, obtener_digito_verificador(20571272521)) 
end

def test_ruc_es_valido
    print validate(true, ruc_es_valido(20131312955)) 
    print validate(true, ruc_es_valido(20206031949))     
    print validate(false, ruc_es_valido(2000000019))     
    print validate(false, ruc_es_valido(20206112310))     
end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_obtener_digito_verificador
  puts ""
  test_ruc_es_valido
  puts ""
end

test
