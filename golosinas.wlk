object frutilla {}
object chocolate {}
object naranja {}
object vainilla {}

class Bombon {
  var peso = 15

  method precio() = 5
  method peso() = peso
  method sabor() = frutilla
  method esLibreDeGluten() = true
  method recibirMordisco() {peso = (peso * 0.8) - 1}

}

class Alfajor {
  var peso = 300

  method precio() = 12
  method peso() = peso
  method sabor() = chocolate
  method esLibreDeGluten() = false
  method recibirMordisco() {peso = peso * 0.8}
}

class Caramelo {
  var peso = 5

  method precio() = 1
  method peso() = peso
  method sabor() = frutilla
  method esLibreDeGluten() = true
  method recibirMordisco() {peso = peso - 1}
}

class Chupetin {
  var peso = 7

  method precio() = 2
  method peso() = peso
  method sabor() = naranja
  method esLibreDeGluten() = true
  method recibirMordisco() {if (peso >= 2) {peso = peso * 0.9}}
}

class Oblea {
  var peso = 250

  method precio() = 5
  method peso() = peso
  method sabor() = vainilla
  method esLibreDeGluten() = false
  method recibirMordisco() {if (peso >= 70) {peso = peso * 0.5} else { peso = peso - (peso * 0.25)}}
}

class Chocolatin {
  var pesoInicial
	var comido = 0
	
	method pesoInicial(unPeso) { pesoInicial = unPeso }
	method precio() = pesoInicial * 0.50 
	method peso() = (pesoInicial - comido).max(0)
	method recibirMordisco() { comido = comido + 2 }
	method sabor() = chocolate
	method esLibreDeGluten() = false
}

class GolosinaBañada {
  var pesoBaño = 4
  var golosinaInterior

  method golosinaInterior(unaGolosina) { golosinaInterior = unaGolosina }
  method precio() = golosinaInterior.precio() + 2
  method peso() = golosinaInterior + pesoBaño
  method sabor() = golosinaInterior.sabor()
  method esLibreDeGluten() = golosinaInterior.esLibreDeGluten()
  method recibirMordisco() {
    golosinaInterior.recibirMordisco()
    pesoBaño = (pesoBaño - 2).max(0) 
  }
}

class TuttiFrutti {
  var property esLibreDeGluten
  const sabores = [frutilla, chocolate, naranja]
	var saborActual = 0

  method precio() = if(esLibreDeGluten) {7} else {10}
  method peso() = 5
  method sabor() = sabores.get(saborActual % 3)
  method recibirMordisco() { saborActual += 1 }
}