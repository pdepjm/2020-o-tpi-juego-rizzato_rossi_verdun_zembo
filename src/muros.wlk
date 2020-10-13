import wollok.game.*
import enemigos.*
import jugador.*
import configTeclas.*
import puertas.*

class Visuals{
    var property position = game.at(0,0)
    var property image

    method mover(nuevaPosicion) {
        position = nuevaPosicion
    }
    method colision(){}
}

class Solids inherits Visuals {
    var property direccionMov
    method esAtravesable() = false

    override method colision() {
        if(direccionMov == "izquierda") {
            jugador.position().right(2)
        } else if(direccionMov == "derecha"){
            jugador.position().left(2)
        } else if(direccionMov == "arriba"){
            jugador.position().down(2)
        } else {
            jugador.position().up(2)
        }
    }
}


object muro{
	const esqSupIzq = new Visuals(image = "muro.png", position = game.at(0,30))
    const esqSupDer = new Visuals(image = "muro.png", position = game.at(10,30))
    const esqInfIzq = new Visuals(image = "muro.png", position = game.at(0,0))
    const esqInfDer = new Visuals(image = "muro.png", position = game.at(10,0))
    
    
	method image() = "muro.png"
	method esAtravesable() = false
	
	method generarParedes(){
        //Genero los vertices
        game.addVisual(esqSupIzq)
        game.addVisual(esqSupDer)
        game.addVisual(esqInfIzq)
        game.addVisual(esqInfDer)

        //Genero los lados
        (1 .. 4).forEach({nro => self.generarLinea("muro.png", nro, 30, "arriba")})
        (6 .. 9).forEach({nro => self.generarLinea("muro.png", nro, 30, "arriba")})
        (1 .. 4).forEach({nro => self.generarLinea("muro.png", 0, nro, "izquierda")})
        (6 .. 9).forEach({nro => self.generarLinea("muro.png", 0, nro, "izquierda")})
        (1 .. 4).forEach({nro => self.generarLinea("muro.png", nro, 0, "abajo")})
        (6 .. 9).forEach({nro => self.generarLinea("muro.png", nro, 0, "abajo")})
        (1 .. 4).forEach({nro => self.generarLinea("muro.png", 30, nro, "derecha")})
        (6 .. 9).forEach({nro => self.generarLinea("muro.png", 30, nro, "derecha")})
    }

    method generarLinea(imagen, ancho, alto, avance){
        var pared = new Solids(image = imagen, direccionMov = avance)
        game.addVisualIn(pared,game.at(ancho,alto))
    }
}
	

