import wollok.game.*
import campeones.*
import enemigos.*
import configTeclas.*

class Nivel {
	game.boardGround("fondo.jpg")
	
	method cargar(){
		
		game.addVisualCharacter(Jugador)	
		game.onTick(2000,"moverse",{enemigo1.moverse()}) //asi con todos los enemigos del nivel
		
		// el cargar el siguiente nivel que lo tenga el enemigo de ese lvl
	}
	
	
}


object nivel1 inherits Nivel{
}
object nivel2 inherits Nivel{}
object nivel3 inherits Nivel{}
