import wollok.game.*
import niveles.*
import jugador.*

class Enemigo {
	//que cuando lo toque haga el oof de roblox y pierda
	var property position = game.at(5,5)
	var contadorPosicion = 0 //no la pongo adentro del metodo pq sino cada vez que lo llamo arranca en 0
			
	method image() = "jugador.png"
	
	//method chocarJugador(){
		//game.sound("oof.wav")
		//game.say(self,"a casa malo")
		//game.schedule(2000,{game.stop()}) //si choca se cierra el juego a los 2 segundos
	
	method moverse(){// anda
		if(contadorPosicion <= 10){
		position = self.position().right(1) // se mueve a la derecha una posicion
		contadorPosicion += 1

		}
		else{
			position = self.position().left(1)	
			contadorPosicion += 1
			if(contadorPosicion == 20){
				contadorPosicion = 0
			}
				
		}
	}	
	
	method chocarJugador(){ // anda
		if(position == jugador.position()){
			game.say(self,"te encontre")
			game.schedule(1000,{game.stop()})
		}
		
	}		
	
}

object enemigo1 inherits Enemigo{} // ver como overridear un var para poder meter varios a distintas posiciones

