import wollok.game.*
import puertas.*

object jugador {
	
	var property position = game.at(2,2) //sin property no se mueve
	var property direccion

	method image() = "jugador.png"
	
	method choco(){ //choca con el enemigo
	}
	
	method puedeMoverse(orientacion){
		return game.getObjectsIn(orientacion.posicionEnEsaDireccion()).all {unObj => unObj.esAtravesable()}
	}
	
	method mover(posicion , orientacion){
		if(self.puedeMoverse(orientacion)){
			position = posicion
			return position
			
		}else {
			return position			
		}
	}
	
	/*method chocarPuerta(){
		if(self.posicion() == puerta.posicion()){
		game.sound("sonido victoria")
		posicion = posicionInicial // lo muevo a donde empezo
		puerta.pasarNivel()
		
		}

	}*/
	
	
	
}

object arriba {
  method posicionEnEsaDireccion() = jugador.position().up(1)
}

object abajo {
  method posicionEnEsaDireccion() = jugador.position().down(1)
}

object izquierda {
  method posicionEnEsaDireccion() = jugador.position().left(1)
}

object derecha {
  method posicionEnEsaDireccion() = jugador.position().right(1)
}