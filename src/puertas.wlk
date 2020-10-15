import wollok.game.*
import jugador.*
import niveles.*

class Puerta {
	//var siguienteNivel 
	var property position
	
	method image() = "puerta.png"
	
	method esAtravesable() = true
	
	method posicion() = position
	
	//method siguienteNivel() = siguienteNivel
	
	method chocarJugador(){
		//game.sound(algun ruidito copado)
		game.say(self,"Ganaste breoh")
		game.clear()
		nivel2.iniciar()
		//self.siguienteNivel().iniciar()
	}
	
}

