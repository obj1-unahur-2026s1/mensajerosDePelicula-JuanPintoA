import destinos.*
import paquetes.*
import vehiculos.*


object roberto {
  var property peso = 90 // asumo que puede cambiar el peso
       // method peso() = peso -> getter
       // method peso(unvalor) {peso=unValor} -> setter
  var vehiculo = bicicleta
  method pesoTotal() {
    return  peso + vehiculo.peso()
  }
  method cambiarDeVehiculo(unVehiculo) {
    vehiculo = unVehiculo
  }
  method puedeLlamar() {
    return false
  }
}

object chuckNorris {
  method pesoTotal() {
    return 80
  }
  method puedeLlamar() {
    return true
  }
}

object neo {
  var tieneCredito = false
  method pesoTotal() = 0
  method puedeLlamar() = tieneCredito
  method cargarCredito() {tieneCredito= true}
  method consumirCredito() {tieneCredito = false}
}

