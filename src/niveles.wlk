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
	const enemigo1 = new EnemigoVertical(
		position = game.at(4,3)
	)	
	const enemigo2 = new EnemigoHorizontal(
		position = game.at(3,4)
	)
	const puerta1 = new Puerta(
	position = game.at(10,5)
)
	override method iniciar(){
		game.clear()
		game.addVisual(puerta1)
		game.addVisual(enemigo1)
		game.addVisual(enemigo2)
		game.onTick(2000,"moverse",{enemigo1.moverse()})
		game.onTick(2000,"moverse",{enemigo2.moverse()})
		game.addVisualCharacter(jugador)
		config.configColisionesEnemigos()
		config.configColisionesPuerta()
		
	}
	
}

