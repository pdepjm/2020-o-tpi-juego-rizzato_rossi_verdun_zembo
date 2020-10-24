import jugador.*
import wollok.game.*

object energia{
	const property position = game.at(4,29)
	
	method image(){
		if(jugador.energia() <= 100 and jugador.energia() > 75){
			return "energiaEntera.png"
		}else if(jugador.energia() <= 75 and jugador.energia() >50){
			return "energia75.png"
		}else if(jugador.energia() <= 50 and jugador.energia() >25){
			return "energiaMitad.png"
		}else if(jugador.energia() <= 25 and jugador.energia() > 0){
			return "energia25.png"
		}else{
			return "energiaVacia.png"
		}
	} 
}

class Chori {
	var property position
	const energiaQueDa = 25
	
	method image() = "chori.png"
	method esAtravesable() = true
	
	method chocarJugador(){
		game.removeVisual(self)
		game.say(jugador,"buenardino rivadavia")
		jugador.ganarEnergia(energiaQueDa)
	}
	
	
}
