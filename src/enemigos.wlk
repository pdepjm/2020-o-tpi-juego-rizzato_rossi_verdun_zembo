import wollok.game.*
import niveles.*


class Enemigo {
	var siguienteNivel
	var vida = 100
	
	method vida() = vida
	method siguienteNivel() = siguienteNivel
	
	method ganar(champJugador){
		if( champJugador.vida() == 0){
			game.say(self,"A casa malo")
			game.stop()
		}
	}
	
	method serAtacado(ataque){
		
		0.max(vida -= ataque.danio()) //cada ataque es un objeto distinto que cambia por cada personaje
		
		if(self.vida() == 0){
			game.clear()
			self.siguienteNivel().cargar()
			}
		}
}
