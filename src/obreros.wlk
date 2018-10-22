class Obrero {
	var property obra
	var property numeroAfiliado	
}

class Albanil inherits Obrero {
	
	method levantarPared() {
		obra.paredTerminada()
	}
	method hacerPiso() {
		obra.pisoTerminada()	
	}
	method hacerTecho() {
		obra.techoTerminado()
	}
	
}

class Especialista inherits Obrero {
	
	
}

class Electricista inherits Especialista {
	method hacerInstalacionElectrica() {
		obra.instalacionElectricaTerminada()
	}	
}

class Pintor inherits Especialista {
	method pintarHabitacion() {
		obra.habitacionPintada()
	}			
}

class Gasista inherits Especialista {
	method hacerInstalacionDeGas() {
		obra.instalacionDeGasTerminada()
	}
}

class Plomero inherits Especialista {
	method hacerInstalacionDeAgua(){
		obra.instalacionDeGasTerminada()
	}
}

class DirectorDeObra inherits Obrero {
	
	var albaniles
	var electricista
	var gasista
	var plomero
	var pintor
	
	method completarObra() {
		pedirHabilitacion()
		contratarObreros()
		completarPisos()
		completarParedes()
		completarTechos()
		hacerInstalacionElectrica()
		hacerInstalcionDeAgua()
		hacerInstalacionDeGas()
	}	
}