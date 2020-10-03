import wollok.game.*
import niveles.*
import movimientos.*


class Enemigo {
	//que cuando lo toque haga el oof de roblox y pierda
	var position = game.at(0,0)
	var imagen = "enemigo.png"
	var tipoDeMovimiento = //movimiento horizontal || movimiento vertical
	
	method position() = position
	
	method chocarJugador(){
		game.sound("oof.wav")
		game.say(self,"a casa malo")
		game.schedule(2000,{game.stop()}) //si choca se cierra el juego a los 2 segundos
	}
	// MOVIMIENTO ENEMIGO ALEATORIO EN UN 
	
	method moverse(){
		if(self.position() <= (10,0)){
		const x = self.position().left(1)//se mueve solo en x
		position = game.at(x,0)
		}
		
		if(self.position() >= (20,0)){
			const x = self.position.right(1)
			position = game.at(x,0)
		}
		//como hacer que se mueva para el otro lado una vez que se movio todo para la izq o la derecha
		const y = 0 // o el numero que querramos que se quede constante en y. si queremos que se mueva en y hacer al reves.
		position = game.at(x,y) 
	}	
		
	
}


