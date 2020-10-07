import wollok.game.*
import jugador.*

class Puerta {
	//var siguienteNivel 
	var property position
	
	method image() = "puerta.png"
	
	method posicion() = position
	
	//method siguienteNivel() = siguienteNivel
	
	method pasarNivel(){
		if(jugador.position() == self.posicion()){
		//game.sound(algun ruidito copado)
		game.say(self,"Ganaste breoh")
		game.clear()
		//self.siguienteNivel().iniciar()
		}
	}
	
}

