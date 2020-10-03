import wollok.game.*
import puertas.*

object jugador {
	const posicionInicial = game.at(25,10)
	var property posicion
	
	method posicion()

	method image() {
		return  if(self.choco()){ "pj gris.png"}  else "pj.png" 	
	}
	
	method choco(){ //choca con el enemigo
		if
	}
	
	method chocarPuerta(){
		if(self.posicion() == puerta.posicion()){
		game.sound("sonido victoria")
		posicion = posicionInicial // lo muevo a donde empezo
		puerta.pasarNivel()
		
		}

	}
	
	
	
}
