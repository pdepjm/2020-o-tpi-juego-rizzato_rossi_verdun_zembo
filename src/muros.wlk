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

object muroslvl2{
	method generarParedes(){
			// Verticales										//celdaEnLaQueVa 	de donde a donde
		(22..23).forEach({nro => self.generarLinea("muro.png",1,nro,"derecha")})
		(22..23).forEach({nro => self.generarLinea("muro.png",2,nro,"derecha")})
		(25..27).forEach({nro => self.generarLinea("muro.png",3,nro,"derecha")})
		(22..23).forEach({nro => self.generarLinea("muro.png",2,nro,"derecha")})
        (1..9).forEach({nro => self.generarLinea("muro.png",5,nro,"derecha")})
        (22..25).forEach({nro => self.generarLinea("muro.png",6,nro,"derecha")})
        (22..23).forEach({nro => self.generarLinea("muro.png",2,nro,"derecha")})
        (14..27).forEach({nro => self.generarLinea("muro.png",8,nro,"derecha")})
        (3..11).forEach({nro => self.generarLinea("muro.png",9,nro,"derecha")})
        (18..27).forEach({nro => self.generarLinea("muro.png",11,nro,"derecha")})
        (3..9).forEach({nro => self.generarLinea("muro.png",13,nro,"derecha")})
        (11..13).forEach({nro => self.generarLinea("muro.png",13,nro,"derecha")})
        (22..24).forEach({nro => self.generarLinea("muro.png",13,nro,"derecha")})
        (20..22).forEach({nro => self.generarLinea("muro.png",16,nro,"derecha")})
        (24..27).forEach({nro => self.generarLinea("muro.png",16,nro,"derecha")})
        (3..9).forEach({nro => self.generarLinea("muro.png",18,nro,"derecha")})
        (11..14).forEach({nro => self.generarLinea("muro.png",18,nro,"derecha")})
        (18..23).forEach({nro => self.generarLinea("muro.png",18,nro,"derecha")})
        (26..27).forEach({nro => self.generarLinea("muro.png",23,nro,"derecha")})
        (22..24).forEach({nro => self.generarLinea("muro.png",23,nro,"derecha")})
        (18..19).forEach({nro => self.generarLinea("muro.png",23,nro,"derecha")})
        (16..18).forEach({nro => self.generarLinea("muro.png",25,nro,"derecha")})
        (1..7).forEach({nro => self.generarLinea("muro.png",26,nro,"derecha")})
        (9..16).forEach({nro => self.generarLinea("muro.png",26,nro,"derecha")})
        (2..7).forEach({nro => self.generarLinea("muro.png",26,nro,"derecha")})
        (14..24).forEach({nro => self.generarLinea("muro.png",28,nro,"derecha")})
        
        
        
       
            // Horizontales
        (26..28).forEach({nro => self.generarLinea("muro.png",nro, 2,"arriba")})
        (26..28).forEach({nro => self.generarLinea("muro.png",nro, 3,"arriba")})
        (9..13).forEach({nro => self.generarLinea("muro.png",nro, 3,"arriba")})
        (18..24).forEach({nro => self.generarLinea("muro.png",nro, 3,"arriba")})
        (20..26).forEach({nro => self.generarLinea("muro.png",nro, 6,"arriba")})
        (20..24).forEach({nro => self.generarLinea("muro.png",nro, 7,"arriba")})
        (20..24).forEach({nro => self.generarLinea("muro.png",nro, 8,"arriba")})
        (26..28).forEach({nro => self.generarLinea("muro.png",nro, 9,"arriba")})
        (1..10).forEach({nro => self.generarLinea("muro.png",nro, 11,"arriba")})
        (18..24).forEach({nro => self.generarLinea("muro.png",nro, 11,"arriba")})
        (2..18).forEach({nro => self.generarLinea("muro.png",nro, 14,"arriba")})
        (26..28).forEach({nro => self.generarLinea("muro.png",nro, 14,"arriba")})
        (2..6).forEach({nro => self.generarLinea("muro.png",nro, 15,"arriba")})
        (2..6).forEach({nro => self.generarLinea("muro.png",nro, 16,"arriba")})
        (25..26).forEach({nro => self.generarLinea("muro.png",nro, 16,"arriba")})
        (2..6).forEach({nro => self.generarLinea("muro.png",nro, 17,"arriba")})
        (2..6).forEach({nro => self.generarLinea("muro.png",nro, 18,"arriba")})
        (11..25).forEach({nro => self.generarLinea("muro.png",nro, 18,"arriba")})
        (1..8).forEach({nro => self.generarLinea("muro.png",nro, 20,"arriba")})
        (16..19).forEach({nro => self.generarLinea("muro.png",nro, 20,"arriba")})
        (4..6).forEach({nro => self.generarLinea("muro.png",nro, 22,"arriba")})
        (13..16).forEach({nro => self.generarLinea("muro.png",nro, 22,"arriba")})
        (18..23).forEach({nro => self.generarLinea("muro.png",nro, 23,"arriba")})
        (13..16).forEach({nro => self.generarLinea("muro.png",nro, 24,"arriba")})
        (23..25).forEach({nro => self.generarLinea("muro.png",nro, 24,"arriba")})
        (27..28).forEach({nro => self.generarLinea("muro.png",nro, 24,"arriba")})
        (3..6).forEach({nro => self.generarLinea("muro.png",nro, 25,"arriba")})
        (3..8).forEach({nro => self.generarLinea("muro.png",nro, 27,"arriba")})
        (11..14).forEach({nro => self.generarLinea("muro.png",nro, 27,"arriba")})
        (16..23).forEach({nro => self.generarLinea("muro.png",nro, 27,"arriba")})
        (26..28).forEach({nro => self.generarLinea("muro.png",nro, 27,"arriba")})
        (26..28).forEach({nro => self.generarLinea("muro.png",nro, 28,"arriba")})
         
        
        
        
       
       
    }

    method generarLinea(imagen, ancho, alto, avance){
        var pared = new Solids(image = imagen, direccionMov = avance)
        game.addVisualIn(pared,game.at(ancho,alto))
    }
}

