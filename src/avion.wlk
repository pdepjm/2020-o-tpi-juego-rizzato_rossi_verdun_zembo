import wollok.game.*
import jugador.*
import niveles.*
import pasaporte.*

class Avion{
	var property siguienteNivel 
	var property position
	var pasaporteActual
	method image() = "avion.png"
	
	method esAtravesable() = true
	
	method posicion() = position
	
	method chocarJugador(){
		if(pasaporteActual.fueEncontrado()){
		game.clear()
		jugador.setearNivel(siguienteNivel)
		self.siguienteNivel().iniciar()
		}
	}
	
}
