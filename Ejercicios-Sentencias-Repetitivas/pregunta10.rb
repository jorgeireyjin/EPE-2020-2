def calculaSueldoNanhos(n,tipoTrabajador,sueldo)
   if tipoTrabajador == 'g'
        for i in 1..n
            if i%4 != 0
                sueldo = sueldo * 1.14
            else
                sueldo = sueldo * 1.18
            end
        end
   end

   if tipoTrabajador == 'e'
        for i in 1..n
            if i%4 != 0
                sueldo = sueldo * 1.08
            else
                sueldo = sueldo * 1.12
            end
        end
   end

   return sueldo.round(2)

end

def calculoPorcentajeAumento(n,tipoTrabajador,sueldo)
    sueldo_final = calculaSueldoNanhos(n,tipoTrabajador,sueldo)
    porc = (sueldo_final/sueldo) - 1

    return (porc*100.0).round(2)

end

def calculoSumaSueldoGerenteyEmpleado(n,sueldoGerente,sueldoEmpleado)
    g  = calculaSueldoNanhos(n,'g',sueldoGerente)
    e = calculaSueldoNanhos(n,'e',sueldoEmpleado)
    return g + e

end

#--- zona de test ----

def test_calculaSueldoNanhos
    print validate(5244.67, calculaSueldoNanhos(4,"g",3000))
    print validate(6815.97, calculaSueldoNanhos(6,"g",3000))
    print validate(1259.71, calculaSueldoNanhos(3,"e",1000))
    print validate(1645.65, calculaSueldoNanhos(6,"e",1000))
end

def test_calculoPorcentajeAumento
    print validate(74.82, calculoPorcentajeAumento(4,"g",3000))
    print validate(127.20, calculoPorcentajeAumento(6,"g",3000))
    print validate(25.97, calculoPorcentajeAumento(3,"e",1000))
    print validate(64.57, calculoPorcentajeAumento(6,"e",1000))    
end

def test_calculoSumaSueldoGerenteyEmpleado
    print validate(6655.55, calculoSumaSueldoGerenteyEmpleado(4,3000,1000))
    print validate(8461.62, calculoSumaSueldoGerenteyEmpleado(6,3000,1000))
end
    
def validate (expected, value)
    expected == value ? "." : "F"
end

def test
puts "Test de prueba del programa"
puts "---------------------------"
test_calculaSueldoNanhos
puts ""
test_calculoPorcentajeAumento
puts ""
test_calculoSumaSueldoGerenteyEmpleado
puts " "
end
test
