require "./Alumno"
require "./Pago"

class Universidad
	attr_accessor :alumnos , :pagos

	def initialize()
		@alumnos = Array.new

	end

	def registrarAlumno(a)
		@alumnos.push(a)
    end

    def listarAlumnosPagos()
        for i in 0..@alumnos.size-1
            puts @alumnos[i].info
            puts "Listado de Pagos"
            puts "CODIGO   FECHA         CONCEPTO          MONTO    ESTADO"
            suma = 0
            pagos = @alumnos[i].pagos
            for j in 0..pagos.size-1
                suma = suma + pagos[j].monto
                puts pagos[j].info
            end
            puts "MOnto pagado a la fecha #{suma}"
            puts ""
        end 

    end

    def listarMas5000()
        for i in 0..@alumnos.size-1
            suma = 0
            pagos = @alumnos[i].pagos
            for j in 0..pagos.size-1
                suma = suma + pagos[j].monto
            end

            if (suma > 5000)
                puts @alumnos[i].info
                puts "Listado de Pagos"
                puts "CODIGO   FECHA         CONCEPTO          MONTO    ESTADO"
                suma = 0
                pagos = @alumnos[i].pagos
                for j in 0..pagos.size-1
                    suma = suma + pagos[j].monto
                    puts pagos[j].info
                end
                puts "MOnto pagado a la fecha #{suma}"
                puts ""
            end

        end 

    end


    
end

puts "*********I N I C I O ***************"

univ = Universidad.new

a1 = Alumno.new('COD01','85963252', "Soto Cardenas, Sofia Cristina","Ingenieria de Sistemas")
p1 = Pago.new('COD01', '01/09/2020', 'Pension Setiembre', 1000, 'Pagado')
p2 = Pago.new('COD01', '01/10/2020', 'Pension OCtubre'  , 1000, 'Pagado')
p3 = Pago.new('COD01', '01/11/2020', 'Pension Noviembre', 1000, 'Pagado')

a1.registrarPago(p1)
a1.registrarPago(p2)
a1.registrarPago(p3)


a2 = Alumno.new('COD02','01234567', "Perez Lopez, Claudia","Ingenieria de Sistemas")
p1 = Pago.new('COD02', '01/09/2020', 'Pension Setiembre', 2000, 'Pagado')
p2 = Pago.new('COD02', '01/10/2020', 'Pension OCtubre'  , 2000, 'Pagado')
a2.registrarPago(p1)
a2.registrarPago(p2)


a3 = Alumno.new('COD03','00123456', "Flores Sosa, Juan","Ingenieria de Sistemas")
p1 = Pago.new('COD03', '01/09/2020', 'Pension Setiembre', 3000, 'Pagado')
p2 = Pago.new('COD03', '01/10/2020', 'Pension OCtubre'  , 3000, 'Pagado')
a3.registrarPago(p1)
a3.registrarPago(p2)


a4 = Alumno.new('COD04','00012345', "Lopez Marquez, PEdro Pablo","Ingenieria de Sistemas")
p1 = Pago.new('COD04', '01/09/2020', 'Pension Setiembre', 4000, 'Pagado')
p2 = Pago.new('COD04', '01/10/2020', 'Pension OCtubre'  , 4000, 'Pagado')
a4.registrarPago(p1)
a4.registrarPago(p2)

a5 = Alumno.new('COD05','00001234', "Tenorio Advincula, Peter","Ingenieria de Sistemas")
p1 = Pago.new('COD05', '01/09/2020', 'Pension Setiembre', 5000, 'Pagado')
p2 = Pago.new('COD05', '01/10/2020', 'Pension OCtubre'  , 5000, 'Pagado')
a5.registrarPago(p1)
a5.registrarPago(p2)

univ.registrarAlumno(a1)
univ.registrarAlumno(a2)
univ.registrarAlumno(a3)
univ.registrarAlumno(a4)
univ.registrarAlumno(a5)


# Listar todos los alumnos con sus pagos
puts "==========================================================="
puts "=============>>>>> Listar a todos los alumnos con sus pagos"
puts "==========================================================="
univ.listarAlumnosPagos

# Listar todos los alumnos con pago superior a 5000
puts "==========================================================="
puts "=============>>>>> Listar a todos los alumnos que pagaron mas de 5000"
puts "==========================================================="
univ.listarMas5000