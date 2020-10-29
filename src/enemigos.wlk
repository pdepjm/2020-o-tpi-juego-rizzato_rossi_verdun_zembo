import wollok.game.*
import niveles.*
import jugador.*


class Enemigo{
	var property position 
	var contadorPosicion = 0 //no la pongo adentro del metodo pq sino cada vez que lo llamo arranca en 0
	var limite 
	
	method chocarJugador(){
			game.say(self,"al lobby")
			game.sound("oof.mp3").play()
			game.schedule(300,{jugador.perderVida()})
			game.schedule(300,{jugador.volverAInicio()})	
	}		
}
class EnemigoHorizontal inherits Enemigo{
	
	method image() = "enemigoH.png"
		
	method esAtravesable() = true
	
	method moverse(){
		if(contadorPosicion < limite){
		position = self.position().right(1) // se mueve a la derecha una posicion
		contadorPosicion += 1

		}
		else{
			position = self.position().left(1)	
			contadorPosicion += 1
			if(contadorPosicion == (limite*2)){
				contadorPosicion = 0
			}
				
		}
	}
}

class EnemigoVertical inherits Enemigo{

	method image() = "enemigoV.png"
	
	method esAtravesable() = true
	
	method moverse(){// anda
		if(contadorPosicion < limite){
		position = self.position().up(1) // se mueve a la derecha una posicion
		contadorPosicion += 1

		}
		else{
			position = self.position().down(1)	
			contadorPosicion += 1
			if(contadorPosicion == (limite*2)){
				contadorPosicion = 0
			}
			
				
		}
	}	
}