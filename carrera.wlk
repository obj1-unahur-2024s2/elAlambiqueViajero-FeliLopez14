import ciudades.*
import autos.*
    object centroDeInscripcion {
        const inscriptos = []
        const rechazados = []
        var ciudadDeLaCarrera = paris

        method ciudad() = ciudadDeLaCarrera

        method replanificacion(nuevaCiudad){
            ciudadDeLaCarrera = nuevaCiudad
            self.reinscripcion()
        }

        method reinscripcion(){
            const todosLosVehiculos = inscriptos + rechazados
            inscriptos.clear()
            rechazados.clear()
            todosLosVehiculos.forEach({v => self.inscribir(v)})
        }

        method sePuedeInscribir(vehiculo){
            return ciudadDeLaCarrera.sePuedeViajarEn(vehiculo)
        }

        method inscribir(vehiculo){
            if(self.sePuedeInscribir(vehiculo)){
                inscriptos.add(vehiculo)
            }else{
                rechazados.add(vehiculo)
            }
        }

        method irALaCiudad(){
            inscriptos.forEach({v => v.sufrirLasConsecuencias()})
        }

    }


