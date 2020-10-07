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
		game.clear()
		//self.siguienteNivel().iniciar()
		}
	}
	
}

const puerta1 = new Puerta(
	position = game.at(10,5)
)