class Cuenta:
  def __init__(self, nroTarjeta, nroCta, nombre, saldo):
    self.nroTarjeta = nroTarjeta
    self.nroCta = nroCta
    self.nombre = nombre
    self.saldo = saldo

  def deposito(self, monto):
    self.saldo = self.saldo + monto

  def retiro(self, monto):
    self.saldo = self.saldo - monto

  def __str__(self):
    return "La CTA %s de %s tiene un saldo de %d" %(self.nroCta, self.nombre, self.saldo) 

#--------------------------------------------------
# CLASE CuentaAhorro
#--------------------------------------------------
class CuentaAhorro(Cuenta):
    def __init__(self, nroTarjeta, nroCta, nombre, monto, tasa):
      super().__init__(nroTarjeta, nroCta, nombre, monto)
      self.tasa = tasa

    def getSaldo(self):
      return super().saldo
#--------------------------------------------------
# CLASE CuentaSueldoCTS
#--------------------------------------------------
class CuentaSueldoCTS(Cuenta):
  def __init__(self, nroTarjeta, nroCta, nombre, monto, empresa, tasa):
    super().__init__(nroTarjeta, nroCta, nombre, monto)
    self.empresa = empresa
    self.tasa = tasa

#--------------------------------------------------
# CLASE DepositoPlazo
#--------------------------------------------------
class DepositoPlazo(CuentaAhorro):
    def __init__(self, nroTarjeta, nroCta, nombre, monto, tasa, plazo):
      super().__init__( nroTarjeta, nroCta, nombre, monto, tasa)
      self.plazo = plazo
      self.monto = monto      
      self.tasa = tasa

    def montoInteres(self):
      self.interes =  self.monto*self.tasa/100.0
    
    def __str__(self):
      return "Titular %s monto a plazo de %d tasa %d intereses %d" %(self.nombre, self.monto, self.plazo, self.tasa)

#--------------------------------------------------
# CLASE Cliente
#--------------------------------------------------
class Cliente():
    def __init__(self, nroTarjeta, nroCta, nombre, monto, empresa, tipo ):
      self.nroTarjeta = nroTarjeta
      self.nroCta = nroCta
      self.nombre = nombre
      self.monto = monto      
      self.empresa = empresa
      self.ctaAhorro1 = None
      self.ctaSueldo1 = None
      self.ctaPlazo1 = None
      self.tipo = tipo

    def crearCuentas(self):
      if self.tipo == "AHORRO":
        self.ctaAhorro1 = CuentaAhorro(self.nroTarjeta, self.nroCta, self.nombre, self.monto , 0.05)
        print( self.ctaAhorro1  )
      
      if self.tipo == "SUELDO":
        self.ctaSueldo1 = CuentaSueldoCTS(self.nroTarjeta, self.nroCta, self.nombre, self.monto , self.empresa, 0.075)
        print( self.ctaSueldo1  )
      
      if self.tipo == "PLAZO":
        self.ctaPlazo1 = DepositoPlazo(self.nroTarjeta, self.nroCta, self.nombre, self.monto, 5, 12)
        print( self.ctaPlazo1  )


print("CRear clientes y cuentas")
c1 = Cliente("5444-0055-0000-0001", "001-0001","John Doe", 100, "BBVA", "AHORRO")
c2 = Cliente("5444-0055-0000-0002", "001-0002","John Wayne", 100, "IBK", "SUELDO")
c3 = Cliente("5444-0055-0000-0003", "001-0003","John Dereck", 100, "SAGA", "PLAZO")
c1.crearCuentas()
c2.crearCuentas()
c3.crearCuentas()
print("\n")

print("Efectuar un Deposito Ahorro")
c1.ctaAhorro1.deposito(100)
print(c1.ctaAhorro1 , "\n")

print("Efectuar un Retiro de Cta Sueldo")
c2.ctaSueldo1.retiro(5)
print( c2.ctaSueldo1, " \n")
print("Efectuar un Deposito de Cta Sueldo")
c2.ctaSueldo1.deposito(200)
print( c2.ctaSueldo1, " \n")

print("Mostrar Interes en Cta PLAZO")
c3.ctaPlazo1.montoInteres()
print( c3.ctaPlazo1, " \n")

