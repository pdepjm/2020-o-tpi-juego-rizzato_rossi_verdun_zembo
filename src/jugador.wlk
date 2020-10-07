import wollok.game.*
import puertas.*

object jugador {
	
	var property position = game.origin() //sin property no se mueve
	
	method position() = position

	method image() = "jugador.png"
	
	method choco(){ //choca con el enemigo
	}
	
	/*method chocarPuerta(){
		if(self.posicion() == puerta.posicion()){
		game.sound("sonido victoria")
		posicion = posicionInicial // lo muevo a donde empezo
		puerta.pasarNivel()
		
		}

	}*/
	
	
	
}
