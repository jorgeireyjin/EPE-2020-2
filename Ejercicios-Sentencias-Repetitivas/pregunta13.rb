=begin
Escriba un programa que calcule el elemento "n" de la serie de fibonnaci
Los dos primeros terminos son 0 y 1
Lo siguientes terminos son la suma de los 2 anteriores: n = n-1 + n-2
La serie es  0 1 1 2 3 5 8 13 ...
=end

def obtener_fibo_n(pos)
    a = 0
    b = 1
    if pos == 1
        return a
    end

    if pos == 2
        return b
    end

    for i in 3..pos
        n = a + b
        a = b 
        b = n
    end

    return b
end

def pinta(pos)
    puts "\n"
    n =  obtener_fibo_n(pos)
    for i in 1..n
        cadena = ''
        for j in 1..i
            cadena = cadena + " " +  n.to_s
        end
        puts cadena + "\n"
    end

 end

def test_obtener_fibo_n
    print validate(0, obtener_fibo_n(1))
    print validate(1, obtener_fibo_n(2))
    print validate(13, obtener_fibo_n(8))
    print validate(144, obtener_fibo_n(13))
    print validate(610, obtener_fibo_n(16))
end

def validate (expected, value)
    expected == value ? "." : "F"

end


def test
    
puts "Test de prueba del programa"

    puts "---------------------------"
    test_obtener_fibo_n
    pinta(  7 )
	puts " "

end
test
