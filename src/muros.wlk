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
	
	const esqSupIzq = new Visuals(image = "esquinaSupIzq.png", position = game.at(0,29))
	const esqSupDer = new Visuals(image = "esquinaSupDer.png", position = game.at(29,29))
	const esqInfIzq = new Visuals(image = "esquinaInfIzq.png", position = game.at(0,0))
	const esqInfDer = new Visuals(image = "esquinaInfDer.png", position = game.at(29,0))
    
	method esAtravesable() = false
	
	method generarParedes(){
        //Genero los vertices
        game.addVisual(esqSupIzq)
        game.addVisual(esqSupDer)
        game.addVisual(esqInfIzq)
        game.addVisual(esqInfDer)

        //Genero los lados
        (1 .. 28).forEach({nro => self.generarLinea("paredSup.png", nro, 29, "arriba")})
        (1 .. 28).forEach({nro => self.generarLinea("paredIzq.png", 0, nro, "izquierda")})
        (1 .. 28).forEach({nro => self.generarLinea("paredInf.png", nro,0, "abajo")})
        (1 .. 28).forEach({nro => self.generarLinea("paredDer.png", 29, nro, "derecha")})
        
        
        
    }

    method generarLinea(imagen, ancho, alto, avance){
        var pared = new Solids(image = imagen, direccionMov = avance)
        game.addVisualIn(pared,game.at(ancho,alto))
    }
}

object muroslvl1{
	method generarParedes(){
			// Verticales										//		celdaEnLaQueVa 	de donde a donde
        (1..16).forEach({nro => self.generarLinea("muro.png",3,nro,"derecha")})
        (22..28).forEach({nro => self.generarLinea("muro.png",3,nro,"derecha")})
        (1 .. 7).forEach({nro => self.generarLinea("muro.png", 7,nro , "derecha")})
        (13 .. 28).forEach({nro => self.generarLinea("muro.png", 7,nro , "derecha")})
        (1 .. 21).forEach({nro => self.generarLinea("muro.png", 11,nro , "derecha")})
        (26 .. 28).forEach({nro => self.generarLinea("muro.png", 11,nro , "derecha")})
        (1 .. 12).forEach({nro => self.generarLinea("muro.png", 21,nro , "derecha")})
        (1 .. 22).forEach({nro => self.generarLinea("muro.png", 28,nro , "derecha")})
            // Horizontales
        (12..28).forEach({nro => self.generarLinea("muro.png",nro, 28,"arriba")})
        (12..28).forEach({nro => self.generarLinea("muro.png",nro, 27,"arriba")})
        (12..28).forEach({nro => self.generarLinea("muro.png",nro, 26,"arriba")})
        (12..28).forEach({nro => self.generarLinea("muro.png",nro, 28,"arriba")})
        (12..20).forEach({nro => self.generarLinea("muro.png",nro, 1,"arriba")})
        
       
    }

    method generarLinea(imagen, ancho, alto, avance){
        var pared = new Solids(image = imagen, direccionMov = avance)
        game.addVisualIn(pared,game.at(ancho,alto))
    }
}

