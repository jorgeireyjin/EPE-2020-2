require "./Vehiculo"

class Fabrica
  def self.for(type, ma, mo , pr,*a)
    case type
    when 'Camioneta'
      Camioneta.new( ma, mo, pr, a[0], a[1] )
    when 'Auto'
      Automovil.new( ma, mo, pr, a[0] )
    else
      raise '* * * Tipo desconocido* * *'
    end
  end
end