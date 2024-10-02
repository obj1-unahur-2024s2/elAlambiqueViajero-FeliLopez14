import ciudades.*
import autos.*
object luke {
  var vehiculo = alambiqueVeloz
  const lugaresVisitados = []

  method ultimoRecuerdo() = lugaresVisitados.last().recuerdo()

  method cantidadDelugaresVisitados() = lugaresVisitados.size()

  method viajar(ciudad){
    if(ciudad.sePuedeViajarEn(vehiculo)){
      lugaresVisitados.add(ciudad)
      vehiculo.sufrirLasConsecuencias()
    }
  }
  method puedeViajarA(ciudad) = 0

  method cambiarVehiculo(nuevoVehiculo){
    vehiculo = nuevoVehiculo
  }
}
