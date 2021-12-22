=begin
Esta funcion recibe la posicion dentro de la serie
Debe devolver el elemento Fibonacci ubicado en dicha posicion
El primer elemento Fibonaci seria el valor CERO
El segundo elemento Fibonacci seria el valor UNO 
y asi sucesivamente
=end
def elemento_fibonacci_en_posicionX(posicion)
    a = 0
    b = 1
    if posicion == 1
        return a
    end

    if posicion == 2
        return b
    end

    for i in 3..posicion
        n = a + b
        a = b 
        b = n
    end

    return b
end

=begin
Esta funcion recibe la posicion hasta la cual hay que generar la serie
Debe invocar a la funcion anterior para obtener cada elemento de la serie
Y luego ir concatenando los elementos para generar la respuesta
=end
def genera_fibonacci_hasta_posicionX(posicion)
  rpta = ""
  for i in 1..posicion
    n = elemento_fibonacci_en_posicionX(i)
    rpta = rpta + " " + n.to_s 
  end

  return rpta
end

#--- zona del programa principal ----

#--- zona de test ----
def test_posicion_serie_fibo
    print validate(0,elemento_fibonacci_en_posicionX(1))
    print validate(1,elemento_fibonacci_en_posicionX(2))
    print validate(1,elemento_fibonacci_en_posicionX(3))
    print validate(2,elemento_fibonacci_en_posicionX(4))
    print validate(3,elemento_fibonacci_en_posicionX(5))
    print validate(8,elemento_fibonacci_en_posicionX(7))
    print validate(34,elemento_fibonacci_en_posicionX(10))
end

def test_genera_serie_fibo
    print validate(" 0 1 1",genera_fibonacci_hasta_posicionX(3))
    print validate(" 0 1 1 2 3 5 8",genera_fibonacci_hasta_posicionX(7))
end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_posicion_serie_fibo
  puts ""
  test_genera_serie_fibo
  puts ""
end

test
