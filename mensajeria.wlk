import mensajeros.*
import paquetes.*


object empresa {
  const mensajeros = []


  method mensajeros() {
    return mensajeros
  }
  method contratarUnMensajero(unMensajero) {
    mensajeros.add(unMensajero)
  }
  method despedirUnMensajero(unMensajero) {
    mensajeros.remove(unMensajero)
  }
  method despedirTodosLosMensajeros() {
    mensajeros.clear()
  }
  method agregarListaDeMensajeros(listaDeMensajeros) {
    mensajeros.addAll(listaDeMensajeros)
  }
  method eliminarListaDeMensajeros(listaDeMensajeros) {
    mensajeros.removeAll(listaDeMensajeros)
  }
  method esGrande() {
    return mensajeros.size() > 2
  }
  method puedeSerEntregadoPorElPrimerMensajero(unPaquete) {
    return paquete.puedeSerEntregado(mensajeros.first())
  }
  method pesoDelUltimoMensajero() {
    return self.ultimoMensajero().pesoTotal()
  }
  method ultimoMensajero() {
    return mensajeros.last()
  }
}