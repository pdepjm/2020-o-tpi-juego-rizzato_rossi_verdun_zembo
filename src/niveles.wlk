import wollok.game.*
import enemigos.*
import jugador.*
import configTeclas.*
import puertas.*

class Nivel {
	var siguienteNivel
		
	method iniciar(){}
	
	
}


object nivel1 inherits Nivel{
		
	override method iniciar(){
		game.clear()
		game.addVisual(puerta1)
		game.addVisual(enemigo1)
		game.onTick(2000,"moverse",{enemigo1.moverse()})
		game.addVisualCharacter(jugador)
		config.configColisiones()
		
	}
	
}

