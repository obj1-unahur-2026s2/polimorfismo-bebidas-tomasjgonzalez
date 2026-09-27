object pepita {
  var energy = 100

  method energy() = energy

  method fly(minutes) {
    energy = energy - minutes * 3
  }
}

object whisky {
  method rendimiento(cantidadBebida) {
    return 0.9 ** cantidadBebida
  }
}

object terere {
  method rendimiento(cantidadBebida) {
    return (0.1 ** cantidadBebida).max(1)
  }

}

object cianuro {
  method rendimiento(cantidadBebida) {
    return 0
    }
}

object sinBebida {
    method rendimiento(cantidadBebida) {
        return 0
    }
}

object tito {
    const peso = 70
    const inerciaBase = 490
    var bebida = sinBebida
    var cantidad = 0

    method consumir(unaCantidad, unaBebida) {
        cantidad = unaCantidad
        bebida = unaBebida
    }

    method velocidad() {
        return bebida.rendimiento(cantidad) * inerciaBase / peso
    }
}

