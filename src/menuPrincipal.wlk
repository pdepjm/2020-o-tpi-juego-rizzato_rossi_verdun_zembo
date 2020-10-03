import wollok.game.*
import niveles.*

object menu {
	var campeonJugador	
	
	method pantallaDeInicio(){
		
		game.title("sobrevibiendo al conurbano")
		game.width(30)
		game.height(30)
		game.addVisual("foto del menu")
		
		//COMENZAR JUEGO
		keyboard.c().onPressDo{self.champSelect()}
		
		//SALIR DEL JUEGO
		keyboard.f().onPressDo{game.stop()}
		
		
	}
	
	method champSelect(){
		game.clear() //limpio lo del menu principal
		game.boardGround("foto de los campeones")
		keyboard.a().onPressDo{self.elegir(champ1)}
		keyboard.s().onPressDo{self.elegir(champ2)}
		keyboard.d().onPressDo{self.elegir(champ3)}
		
	}
	
	method elegir(champ){
		campeonJugador = champ
		nivel1.cargar() // en teoria deberia cargar el nivel 1
		
	}
	
	
}



