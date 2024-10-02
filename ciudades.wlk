
import luke.*
import autos.*


object paris {
  const combustibleRequerido = 100
  
  
  method recuerdo() = "Llavero de la Torre Eiffel" 

  method sePuedeViajarEn(unVehiculo) = unVehiculo.combustible() >= 10
}


object buenosAires {
  var presidente = "Nestor"
  

  method presidente() = presidente

  method recuerdo() = if(presidente == "Nestor") "Mate con Yerba" else "Mate sin Yerba"

  method cambiarPresidente(nuevoPresidente){
    presidente = nuevoPresidente
  }

  method sePuedeViajarEn(unVehiculo) = unVehiculo.esRapido()
}


object bagdad {
  var anio = 2024

  method recuerdo(){
    if(anio < 1945){
      "Petroleo"
    }else if(anio.between(1946, 1999)){
      "Armas"
    }else{
      "Jardines de Babilonia"
    }
  }

  method anioActual(nuevoAnio){
    anio = nuevoAnio
  }

  method sePuedeViajarEn(unVehiculo) = true
}

object lasVegas {
  var conmemoracion = paris

  method recuerdo(){
    return conmemoracion.recuerdo()
  }

  method conmemorarA(pais){
    conmemoracion = pais
  }

  method sePuedeViajarEn(unVehiculo) = conmemoracion.sePuedeViajarEn(unVehiculo)
}


object moscu {
  method distanciaDeViaje() = 200

  method recuerdo() = "Vodka"


  method sePuedeViajarEn(unVehiculo) = unVehiculo.combustible() > 200
}