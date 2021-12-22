class Impresora
  @instance = new

  private_class_method :new

   def self.instance
    @instance
  end

  def mostrar(t)
        puts "#{t  }"
  end


end