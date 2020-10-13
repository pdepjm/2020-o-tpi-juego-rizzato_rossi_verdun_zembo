import wollok.game.*
import niveles.*

object menu {
		
	method pantallaDeInicio(){
		
		game.title("escapar de lationoamerica: the game")
		game.width(30)
		game.height(30)
		//game.boardGround("menuPrincipal.png")
		
		//COMENZAR JUEGO
		keyboard.c().onPressDo{nivel1.iniciar()} //no cierra con f y no mueve el jugador
		
		
		
		//SALIR DEL JUEGO
		keyboard.f().onPressDo{game.stop()} //anda 
		
		
	}
	
}



