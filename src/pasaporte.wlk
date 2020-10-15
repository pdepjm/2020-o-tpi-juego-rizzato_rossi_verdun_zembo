import wollok.game.*
import jugador.*

object pasaporte {
	var property position = game.at(27,3)
	var property fueEncontrado = false
	
	method esAtravesable() = true
	
	method image() = "pasaporte.png"

	method chocarJugador(){
		//game.sound(algun ruidito copado)
		game.say(jugador,"Me las tomo ndeah")
		self.fueEncontrado(true)
		game.removeVisual(self)
	}
	
} 