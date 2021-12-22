require "./Colaborador"


class Fabrica
  def self.for(type, dni,nombre,edad, *a)
    case type
    when 'TCO'
      TCompleto.new(dni, nombre, edad, a[0], a[1])
    when 'TPA'
      TParcial.new(dni, nombre, edad, a[0], a[1], a[2] )
    when 'ADM'
      Administrativo.new(dni, nombre, edad, a[0])
    else
      raise '* * * Empleado ilegal !!!! * * *'
    end
  end
end