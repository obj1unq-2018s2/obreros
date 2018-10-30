import uocra.*

class Obrero {
	
	var licencia=false
	var jornalesAdeudados=0
	
	method iniciarLicencia() {
		licencia=true
	}
	
	method finalizarLicencia() {
		licencia=false
	}
	
	method estaDeLicencia() {
		return licencia
	}
	
	// Template Method
	method jornadaLaboral(obra) {
		jornalesAdeudados+=1
		self.consumirMateriales(obra)
	}
	
	// Template Method
	method sueldoPendiente() {
		return jornalesAdeudados*self.sueldoPorJornal()
	}
	
	method cobrarSueldo() {
		jornalesAdeudados=0	
	}
	
	method consumirMateriales(obra)
	method sueldoPorJornal()
}

class Albanil inherits Obrero {
	
	override method consumirMateriales(obra) {
		obra.jornadaDeTrabajoAlbanil()
	}
	
	override method sueldoPorJornal() {
		return uocra.jornalAlbanil()	
	}
}

class Electricista inherits Obrero {
	
	override method consumirMateriales(obra) {
		obra.jornadaDeTrabajoElectrisista()
	}
	
	override method sueldoPorJornal() {
		return uocra.jornalElectricista()	
	}
}

class Plomero inherits Obrero {
	
	override method consumirMateriales(obra) {
		obra.jornadaDeTrabajoPlomero()
	}
	
	override method sueldoPorJornal() {
		return uocra.jornalEspecialista()	
	}
}

class Gasista inherits Obrero {
	
	override method consumirMateriales(obra) {
		obra.jornadaDeTrabajoGasista()
	}
	
	override method sueldoPorJornal() {
		return uocra.jornalEspecialista()	
	}
}
