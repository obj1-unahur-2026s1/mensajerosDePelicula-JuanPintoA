import destinos.*
import mensajeros.*

object paquete {
  var destino = brooklyn
  var estaPago = false
  //method estaPago() = estaPago
  method cambiarDestino(nuevoDestino) {
    destino = nuevoDestino
  }
  method registrarPago() {estaPago=true}
  method cancelarPago() {estaPago=false}
  method puedeSerEntregado(unMensajero) {
    return estaPago && destino.dejaPasar(unMensajero)
  }
}

object paquetito {
  method estaPago() {
    return true
  }
  method puedeSerEntregado(unMensajero) {
    return true
  }

}

object paqueton {
  const destinos = #{}
  var importePagado = 0
  method precioTotal() = destinos.size() * 100
  method pagoParcial(unValor) {
    importePagado = (importePagado + unValor).min(self.precioTotal())
  }
  method estaPago() = importePagado == self.precioTotal()
  method puedeSerEntregado(unMensajero) {
    return self.estaPago() && 
    destinos.all({d => d.dejaPasar(unMensajero)})
  }
}