=begin
Un total de N personajes de la película  “Los inmortales” aparecen en escena, 
todos con un mismo poder X. 
Cuando un inmortal elimina a otro, su poder se ve multiplicado por el del rival eliminado.
 Al final debe quedar un solo inmortal.


     ???????????????????????????????????????????????
=end
def totalPoder(n,x)

end

#--- zona de test ----

def test_totalPoder
    print validate(8, totalPoder(3,2))
    print validate(3, totalPoder(1,3))    
    print validate(1024, totalPoder(5,4))
    print validate(1, totalPoder(7,1))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_totalPoder
  puts " "
end
test