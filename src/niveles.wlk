import wollok.game.*
import campeones.*
import enemigos.*
import configTeclas.*

class Nivel {
	var enemigoLvl
	game.boardGround("fondo de peleas de pokemon ponele.jpg")
	
	method cargar(){
		game.addVisual(campeonEnemigo)
		game.addVisual(campeonJugador)	
		enemigoLvl.siguienteLevel(nivelX)
		
		// el cargar el siguiente nivel que lo tenga el enemigo de ese lvl
	}
	
	
}


object nivel1 inherits Nivel{
}
object nivel2 inherits Nivel{}
object nivel3 inherits Nivel{}
