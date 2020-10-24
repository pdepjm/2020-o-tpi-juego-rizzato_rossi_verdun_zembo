import wollok.game.*
import niveles.*
import jugador.*

class EnemigoHorizontal {
	//que cuando lo toque haga el oof de roblox y pierda
	var property position 
	var contadorPosicion = 0 //no la pongo adentro del metodo pq sino cada vez que lo llamo arranca en 0
	var limite 
	var morir = game.sound("oof.mp3")
	
	method image() = "enemigo.png"
		
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
	
	method chocarJugador(){
			game.say(self,"al lobby")
			morir.play()
			game.schedule(1000,{jugador.perderVida()})
		
	}		
	
}

class EnemigoVertical {
	//que cuando lo toque haga el oof de roblox y pierda
	var property position 
	var contadorPosicion = 0 //no la pongo adentro del metodo pq sino cada vez que lo llamo arranca en 0
	var limite
	var morir = game.sound("oof.mp3")

	method image() = "enemigo.png"
	
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
	
	method chocarJugador(){
			morir.play()
			game.say(self,"al lobby")
			game.schedule(2000,{jugador.perderVida()})
		
	}		
	
}