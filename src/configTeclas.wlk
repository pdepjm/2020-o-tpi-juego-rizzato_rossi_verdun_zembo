import wollok.game.*
import niveles.*
import jugador.*
import enemigos.*

object config{
	method configColisiones(){
	game.onCollideDo(jugador, {enemigo => enemigo.chocarJugador()})
	game.onCollideDo(jugador, {puerta => puerta.pasarDeNivel()})
	}
}
