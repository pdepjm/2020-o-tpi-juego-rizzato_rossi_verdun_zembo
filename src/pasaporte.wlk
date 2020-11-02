import wollok.game.*
import jugador.*

class Pasaporte {
	var property position 
	var property fueEncontrado = false
	
	method esAtravesable() = true
	
	method image() = "pasaporte.png"

	method chocarJugador(){
		game.say(jugador,"Me las tomo ndeah")
		self.fueEncontrado(true)
		game.removeVisual(self)
	}
	
} 