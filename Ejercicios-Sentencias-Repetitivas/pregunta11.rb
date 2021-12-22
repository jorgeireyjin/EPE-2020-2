def convertirNumeroBinario(numero)
   rpta = ''

   while numero > 0
        dig = numero % 2
        rpta = dig.to_s + rpta
        numero = numero / 2
   end
   rpta = numero.to_s + rpta

    return rpta.to_i
end

def convertirNumeroABase(numero, base)
      rpta = ''

   while numero > 0
        dig = numero % base
        rpta = dig.to_s + rpta
        numero = numero / base
   end
   rpta = numero.to_s + rpta

    return rpta.to_i
end

def convertirBinarioABase10(numero)
    suma = 0
    potencia = 0
    while numero > 0
        digito = numero % 10
        numero = numero / 10
        suma = suma + digito*(2**potencia)
        potencia = potencia + 1
    end    

    return suma    
end

#--- zona de test ----

def test_convertirNumeroBinario
    print validate(10, convertirNumeroBinario(2))
    print validate(1111, convertirNumeroBinario(15))
    print validate(101010, convertirNumeroBinario(42))
end

def test_convertirNumeroABase
    print validate(503, convertirNumeroABase(323,8))
    print validate(101010, convertirNumeroABase(42,2))
    print validate(11, convertirNumeroABase(10,9))
end

def test_convertirBinarioABase10
    print validate(42, convertirBinarioABase10(101010))
    print validate(15, convertirBinarioABase10(1111))
    print validate(2, convertirBinarioABase10(10))
    print validate(8, convertirBinarioABase10(1000))
end
    
def validate (expected, value)
    expected == value ? "." : "F"
end

def test
puts "Test de prueba del programa"
puts "---------------------------"
test_convertirNumeroBinario
puts ""
test_convertirNumeroABase
puts ""
test_convertirBinarioABase10
puts " "
end
test
