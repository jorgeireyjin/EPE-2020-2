def potencia(a, b)
    if (b == 0)
       resultado = 1
    else
       resultado = a * potencia(a,b-1)
    end
    return resultado
end
def restasSucev(a, b)
    if (a < b)
    	cont = 0
    else
    	cont = 1 + restasSucev(a-b,b)
    end
    return cont
end
puts "ingrese el valor de a"
a=gets.to_i
puts "ingrese el valor de b"
b=gets.to_i
#resultado=potencia(a,b)
resultado=restasSucev(a,b)
puts "resultado = "+resultado.to_s