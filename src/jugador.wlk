import wollok.game.*
import puertas.*
import energia.*

object jugador {
	
	var property position = game.at(2,2)
	var property direccion
	var property vidas = 3
	var property energia = 100

	method image() = "jugador.png"
	
	method perderVida(){
		self.volverAInicio()
		vidas -= 1
		if(vidas == 0){
			game.stop()
		}
		
	}
	
	method perderEnergia(){
		energia -= 1
		if(energia == 0){
			game.say(self,"a mimir")
			game.schedule(2000,game.stop())
		}
	}
	
	method ganarEnergia(energiaGanada){
		energia += energiaGanada
	}
	
	method volverAInicio(){
		position = game.at(2,2)
	}

	method puedeMoverse(orientacion){
		return game.getObjectsIn(orientacion.posicionEnEsaDireccion()).all {unObj => unObj.esAtravesable()}
	}
	
	method mover(posicion , orientacion){
		if(self.puedeMoverse(orientacion)){
			position = posicion
			self.perderEnergia()
			return position
			
		}else {
			return position			
		}
	}	
	
}

object arriba {
  method posicionEnEsaDireccion() = jugador.position().up(1)
}

object abajo {
  method posicionEnEsaDireccion() = jugador.position().down(1)
}

object izquierda {
  method posicionEnEsaDireccion() = jugador.position().left(1)
}

object derecha {
  method posicionEnEsaDireccion() = jugador.position().right(1)
}

object corazon{
	const property position = game.at(1,29)
	
	method image(){
		if(jugador.vidas() == 3){
			return "3Corazones.png"
		}else if(jugador.vidas() == 2){
			return "2Corazones.png"
		}else{
			return "1Corazon.png"
		}
	}
	
}