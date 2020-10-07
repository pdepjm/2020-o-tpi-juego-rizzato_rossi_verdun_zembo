import wollok.game.*
import niveles.*
import jugador.*
import enemigos.*

object config{
	method configColisionesEnemigos(){
	game.onCollideDo(jugador, {enemigo => enemigo.chocarJugador()})
	
	
	}
	method configColisionesPuerta(){
    game.onCollideDo(jugador, {puerta => puerta.pasarNivel()})
	}
}
