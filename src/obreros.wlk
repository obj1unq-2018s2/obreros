class Obrero {
	var trabajando
	var obras = #{}
	var jornalesAdeudados = 0
	
	method trabajar(obra) {
		jornalesAdeudados += 1
	}
}

class Albanil inherits Obrero {
	
	override method trabajar(obra) {
		if (obra.ladrillos()) {
			super(obra)
			obra.paredLevantada(100)
		}	
	}	
}

class Electricista inherits Obrero {
	
	override method trabajar(obra) {
		if (obra.cables()) {
			super(obra)
			obra.trabajoElectricto(3)
		}	
	}	
}

class Plomero inherits Obrero {
	
	override method trabajar(obra) {
		if (obra.caniosAgua()) {
			super(obra)
			obra.trabajoDePlomeria(3)
		}	
	}	
}

class Gasista inherits Obrero {
	
	override method trabajar(obra) {
		if (obra.caniosGasDisponibles()) {
			jornalesAdeudados+=1
			obra.trabajoDeGasista(3)
		}	
	}	
}