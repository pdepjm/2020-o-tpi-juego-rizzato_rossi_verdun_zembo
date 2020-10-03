import wollok.game.*
import jugador.*

object puerta {
	var siguienteNivel 
	var posicion
	
	method posicion() = posicion
	
	method siguienteNivel() = siguienteNivel
	
	method pasarNivel(){
		if(jugador.posicion() == self.posicion()){
		game.sound(algun ruidito copado)
		game.clear()
		self.siguienteNivel().iniciar()
		}
	}
	
}
