class Obrero {
	
	var licencia=false
	
	method iniciarLicencia() {
		licencia=true
	}
	
	method finalizarLicencia() {
		licencia=false
	}
	
	method estaDeLicencia() {
		return licencia
	}
	
	method jornadaLaboral(obra)
	
}

class Albanil inherits Obrero {
	
	override method jornadaLaboral(obra) {
		obra.jornadaDeTrabajoAlbanil()
	}
}

class Eletricista inherits Obrero {
	
	override method jornadaLaboral(obra) {
		obra.jornadaDeTrabajoElectrisista()
	}
}

class Plomero inherits Obrero {
	
	override method jornadaLaboral(obra) {
		obra.jornadaDeTrabajoPlomero()
	}
}

class Gasista inherits Obrero {
	
	override method jornadaLaboral(obra) {
		obra.jornadaDeTrabajoGasista()
	}
}
