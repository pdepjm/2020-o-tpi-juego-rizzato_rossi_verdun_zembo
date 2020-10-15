import wollok.game.*
import jugador.*
import niveles.*
import pasaporte.*

class Puerta {
	var property siguienteNivel 
	var property position
	
	method image() = "puerta.png"
	
	method esAtravesable() = true
	
	method posicion() = position
	
	//method siguienteNivel() = siguienteNivel
	
	method chocarJugador(){
		if(pasaporte.fueEncontrado()){
		game.say(self,"Ganaste breoh")
		game.clear()
		self.siguienteNivel().iniciar()
		
		}
	}
	
}



