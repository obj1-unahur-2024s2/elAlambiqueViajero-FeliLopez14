import luke.*
import ciudades.*




object alambiqueVeloz {
  var property combustible = 100

  method combustible() = combustible

  method esRapido() = true

  method sufrirLasConsecuencias(){
    combustible = 0.max(combustible - 10)
  }
}


object superChatarraEspecial {
  var combustible = 200
  var tieneMuniciones = true

  method combustible() = combustible

  method esRapido() = !tieneMuniciones

   method sufrirLasConsecuencias(){
    combustible = 0.max(combustible - 10)
  }
}


object AntiguallaBlindada {
  var combustible = 300
  var vida = 1000
  var gangsters = 7

  method combustible() = combustible

  method esRapido() = gangsters < 3 

   method sufrirLasConsecuencias(){
    if(self.esRapido()){
      gangsters = 1.max(gangsters - 1)
      vida = 0.max(vida - 100)
    }
  }
}


object superConvertible {
  var convertidoEn = alambiqueVeloz

  method combustible() = convertidoEn.combustible()

  method esRapido() = true

  method sufrirLasConsecuencias(){
    convertidoEn = AntiguallaBlindada
  }
}