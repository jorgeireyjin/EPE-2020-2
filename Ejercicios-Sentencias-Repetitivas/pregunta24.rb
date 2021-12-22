def determina_sueldo(nota1,nota2,nota3)
sueldo=0
	if nota1 >= 95 and nota2 > 75 and nota3 > 70
		sueldo = 12500
	end
	if (nota1 > 70 and nota1 < 95)  and nota2 > 70 and nota3 > 70
		sueldo = 9000
	end
	if (nota1 >= 65 and nota1 <= 70 )  and nota2 > 65 and nota3 > 65
		sueldo = 7500
	end
	if (nota1 > 70 and nota1 < 95)  and nota2 > 70 and nota3 > 70
		sueldo = 9000
	end
	if nota1 < 65 and nota2 < 65 and nota3 < 60
		sueldo = 0
	end

return sueldo
end



def calcula_planilla(ex1,ex2,ex3)
planilla=0

	for i in 0..(ex1.size-1)
		planilla = planilla + determina_sueldo(ex1[i],ex2[i],ex3[i])
	end

return planilla
end
#--- zona de test ----
def test_determina_sueldo
print validate(12500, determina_sueldo(97,98,97))
print validate(9000, determina_sueldo(78,82,96))
print validate(0, determina_sueldo(96,64,85))
print validate(12500, determina_sueldo(97,96,76))
print validate(9000, determina_sueldo(88,85,77))
end


def test_calcula_planilla
print validate(68500,calcula_planilla(@ex1,@ex2,@ex3))

end

def validate (expected, value)
 expected == value ? "." : "F"
end

@ex1=[97,78,92,89,97,88,96,75,68]
@ex2=[98,82,98,95,96,85,64,61,70]
@ex3=[97,96,94,89,76,77,85,87,68]




  puts "Test de Pregunta2 - Practica Calificada 2"
  puts "---------------------------"
  test_determina_sueldo
  puts ""
  test_calcula_planilla
  puts ""