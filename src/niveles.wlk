import wollok.game.*
import enemigos.*
import jugador.*
import configTeclas.*
import puertas.*
import pasaporte.*
import muros.*

class Nivel {
	var siguienteNivel
		
	method iniciar(){
		game.addVisual(corazon)
	}
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
	
	const pasaporte1 = new Pasaporte(
		position = game.at(16,2),
		fueEncontrado = false
	)
	const puertaLvl1 = new Puerta(siguienteNivel = nivel2, position = game.at(25,1),pasaporteActual = pasaporte1)
	
	override method iniciar(){
		game.clear()
		muro.generarParedes()
		muroslvl1.generarParedes()
		super()
		game.addVisual(puertaLvl1)
		game.addVisual(enemigo1)
		game.addVisual(enemigo2)
		game.addVisual(enemigo3)
		game.addVisual(enemigo4)
		game.addVisual(enemigo5)
		game.addVisual(enemigo6)
		game.addVisual(enemigo7)
		game.addVisual(enemigo8)
		game.addVisual(pasaporte1)
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


object nivel2 inherits Nivel{
	
	const enemigo1 = new EnemigoVertical(
		limite = 8,
		position = game.at(7,2)
	)	
	const enemigo2 = new EnemigoVertical(
		limite = 8,
		position = game.at(25,7)
	)
	const enemigo3 = new EnemigoVertical(
		limite = 5,
		position = game.at(26,18)
	)
	const enemigo4 = new EnemigoVertical(
		limite = 4,
		position = game.at(24,19)
	)
	const enemigo5 = new EnemigoVertical(
		limite = 3,
		position = game.at(3,21)
	)
	const enemigo6 = new EnemigoHorizontal(
		limite = 8,
		position = game.at(6,1)
	)
	const enemigo7 = new EnemigoHorizontal(
		limite = 8,
		position = game.at(1,12)
	)
	const enemigo8 = new EnemigoHorizontal(
		limite = 8,
		position = game.at(4,13)
	)
	const enemigo9 = new EnemigoHorizontal(
		limite = 10,
		position = game.at(10,10)
	)
	const enemigo10 = new EnemigoHorizontal(
		limite = 4,
		position = game.at(23,20)
	)
	/*const enemigo11 = new EnemigoHorizontal(
		limite = 4,
		position = game.at(1,21)
	)*/
	const enemigo12 = new EnemigoHorizontal(
		limite = 4,
		position = game.at(1,10)
	)
	
    const pasaporte2 = new Pasaporte(
    position = game.at(7,15),
    fueEncontrado = false
    )        
	const puerta2 = new Puerta(position = game.at(20,21),siguienteNivel = nivel3, pasaporteActual = pasaporte2)  
	    
	override method iniciar(){
		game.clear()
		super()
		muro.generarParedes()
		muroslvl2.generarParedes()
		game.addVisual(puerta2)
		game.addVisual(enemigo1)
		game.addVisual(enemigo2)
		game.addVisual(enemigo3)
		game.addVisual(enemigo4)
		game.addVisual(enemigo5)
		game.addVisual(enemigo6)
		game.addVisual(enemigo7)
		game.addVisual(enemigo8)
		game.addVisual(enemigo9)
		game.addVisual(enemigo10)
		//game.addVisual(enemigo11)
		game.addVisual(enemigo12)
		game.addVisual(pasaporte2)
		game.onTick(600,"moverse",{enemigo1.moverse()})
		game.onTick(500,"moverse",{enemigo2.moverse()})
		game.onTick(1000,"moverse",{enemigo3.moverse()})
		game.onTick(300,"moverse",{enemigo4.moverse()})
		game.onTick(500,"moverse",{enemigo5.moverse()})
		game.onTick(450,"moverse",{enemigo6.moverse()})
		game.onTick(500,"moverse",{enemigo7.moverse()})
		game.onTick(800,"moverse",{enemigo8.moverse()})
		game.onTick(200,"moverse",{enemigo9.moverse()})
		game.onTick(500,"moverse",{enemigo10.moverse()})
		//game.onTick(500,"moverse",{enemigo11.moverse()})
		//game.addVisualIn(jugador, game.at(2,2))
		jugador.volverAInicio()
		game.addVisual(jugador)
		config.configColisiones()
		config.teclasJugador()
		
	}
}

object nivel3 inherits Nivel{}
