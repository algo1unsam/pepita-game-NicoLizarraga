import ciudades.*
import comidas.*
import pepita.*

object alguien{
	var property posicion = game.at(2,2)
	var comidaActual = null  // NULL : OBJETO QUE REPRESENTA LA NADA. NO USAR "" PARA STRINGS
	method imagen() = "jugador.png"
	method encontraste(comida){
		if (comidaActual != null)
		game.addVisualIn(comidaActual, posicion.up(1))
		game.removeVisual(comida)
		comidaActual = comida
		
	}
	
	method queHasEncontrado(){
	pepita.come(comidaActual)
	game.addVisualIn(comidaActual, posicion.up(4)) // NO SE USAR EL RANDOM
	comidaActual = null 
	
}

}

