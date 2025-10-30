import golosinas.*

object mariano {
    const property golosinas = []

    method comprar(unaGolosina) {golosinas.add(unaGolosina)}
    method desechar(unaGolosina) {golosinas.remove(unaGolosina)}
    method cantidadDeGolosinas() = golosinas.size()
    method tieneLaGolosina(unaGolosina) = golosinas.contains(unaGolosina)
    method probarGolosinas() {golosinas.forEach({golosina => golosina.recibirMordisco()})}
    method hayGolosinaSinTACC() = golosinas.any({golosina => golosina.esLibreDeGluten()})
    method preciosCuidados() = golosinas.all({golosina => golosina.precio() <= 10})
    method golosinaDeSabor(unSabor) = golosinas.find({golosina => golosina.sabor() == unSabor})
    method golosinasDeSabor(unSabor) = golosinas.filter({golosina => golosina.sabor() == unSabor})
    method sabores() = golosinas.map({golosina => golosina.sabores()}).asSet()
    method golosinaMasCara() = golosinas.max({golosina => golosina.precio()})
    method pesoGolosinas() = golosinas.sum({golosina => golosina.peso()})
    
    // .difference(another) sirve para saber que elementos de la parte izquierda no lo estan en la derecha
    method golosinasFaltantes(golosinasDeseadas) = golosinasDeseadas.difference(golosinas)
    
    method saboresFaltantes(saboresDeseados) = saboresDeseados.filter({saborDeseado => !self.tieneGolosinaDeSabor(saborDeseado)})
    method tieneGolosinaDeSabor(sabor) = golosinas.any({golosina => golosina.sabor() == sabor})
}