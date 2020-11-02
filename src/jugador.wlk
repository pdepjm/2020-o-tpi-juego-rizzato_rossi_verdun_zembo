import wollok.game.*
import avion.*
import energia.*
import niveles.*

object jugador {
	var property position = game.at(2,2)
	var orientacion = derecha
	var property vidas = 3
	var property energiaJugador = 100
	var image = "jugadorDer.png"
	var nivelActual

	method image() = orientacion.imagenDelJugador()
	
	method actualizarImagen(){
		image = orientacion.imagenDelJugador()
	}
	
	method nivelActual() = nivelActual
	
	method perderVida(){
		self.volverAInicio()
		vidas -= 1
		self.energiaJugador(100)
		if(vidas == 0){
			gameOver.iniciar()
		}	
	}
	
	method perderEnergia(){
		energiaJugador -= 1
		if(energiaJugador == 0){
			game.say(self,"a mimir")
			gameOver.iniciar()
		}
	}
	
	method setearNivel(nivel){
		nivelActual = nivel
	}
	
	method ganarEnergia(energiaGanada){
		var nuevaEnergia = energiaJugador + energiaGanada
		100.min(nuevaEnergia)
	}
	
	method volverAInicio(){
		position = game.at(2,2)
		nivelActual.iniciar()
	}

	method puedeMoverse(unaOrientacion){
		return game.getObjectsIn(unaOrientacion.posicionEnEsaDireccion()).all {unObj => unObj.esAtravesable()}
	}
	
	method mover(posicion , unaOrientacion){
		orientacion = unaOrientacion
		self.actualizarImagen()
		
		if(self.puedeMoverse(unaOrientacion)){
			position = posicion
			self.perderEnergia()
			return position
			
		}else {
			return position			
		}
	}	
	
}

class Orientacion{
  method posicionEnEsaDireccion() 
  method imagenDelJugador()
}

object arriba inherits Orientacion {
  override method posicionEnEsaDireccion() = jugador.position().up(1)
  override method imagenDelJugador() = "jugadorDer.png"
}

object abajo inherits Orientacion{
  override method posicionEnEsaDireccion() = jugador.position().down(1)
  override method imagenDelJugador() = "jugadorDer.png"
}

object izquierda inherits Orientacion{
	override method posicionEnEsaDireccion() = jugador.position().left(1)
  	override method imagenDelJugador() = "jugadorIzq.png"
}

object derecha inherits Orientacion {
  override method posicionEnEsaDireccion() = jugador.position().right(1)
  override method imagenDelJugador() = "jugadorDer.png"
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

object badEnding{
	
	method position() = game.at(0,0)
	
	method image() = "badEnding.png"
}