import wollok.game.*
import enemigos.*
import jugador.*
import configTeclas.*
import puertas.*
import muros.*

class Nivel {
	var siguienteNivel
		
	method iniciar(){}
	
	
}


object nivel1 inherits Nivel{
	const enemigo1 = new EnemigoVertical(
		limite = 4,
		position = game.at(3,17)
	)	
	const enemigo2 = new EnemigoVertical(
		limite = 4,
		position = game.at(7,7)
	)
	const enemigo3 = new EnemigoVertical(
		limite = 4,
		position = game.at(11,21)
	)
	const enemigo4 = new EnemigoHorizontal(
		limite = 8,
		position = game.at(12,4)
	)
	
	const enemigo5 = new EnemigoHorizontal(
		limite = 8,
		position = game.at(12,7)
	)
	
	const enemigo6 = new EnemigoHorizontal(
		limite = 8,
		position = game.at(12,10)
	)
	
	const enemigo7 = new EnemigoHorizontal(
		limite = 16,
		position = game.at(12,18)
	)
	
	const enemigo8 = new EnemigoHorizontal(
		limite = 6,
		position = game.at(22,4)
	)
	
	
	
	const puerta1 = new Puerta(
	position = game.at(25,2)
    )
        
	override method iniciar(){
		game.clear()
		muro.generarParedes()
		muroslvl1.generarParedes()
		game.addVisual(puerta1)
		game.addVisual(enemigo1)
		game.addVisual(enemigo2)
		game.addVisual(enemigo3)
		game.addVisual(enemigo4)
		game.addVisual(enemigo5)
		game.addVisual(enemigo6)
		game.addVisual(enemigo7)
		game.addVisual(enemigo8)
		game.onTick(1000,"moverse",{enemigo1.moverse()})
		game.onTick(1000,"moverse",{enemigo2.moverse()})
		game.onTick(1000,"moverse",{enemigo3.moverse()})
		game.onTick(300,"moverse",{enemigo4.moverse()})
		game.onTick(500,"moverse",{enemigo5.moverse()})
		game.onTick(700,"moverse",{enemigo6.moverse()})
		game.onTick(300,"moverse",{enemigo7.moverse()})
		game.onTick(300,"moverse",{enemigo8.moverse()})
		game.addVisual(jugador)
		config.configColisiones()
		config.teclasJugador()
		
	}
	
}

