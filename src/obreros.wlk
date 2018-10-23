class Obrero {
	var trabajando = false
	var obras = #{}
	var jornalesAdeudados = 0
	
	method jornalesAdeudados() {
		return jornalesAdeudados
	}
	
	method trabajar(obra) {
		trabajando = true
		jornalesAdeudados += 1
	}
	
	method descansar() {
		trabajando = false
	}
	
	method trabajando() {
		return trabajando
	}
}

class Albanil inherits Obrero {
	
	override method trabajar(obra) {
		if (obra.ladrillos()) {
			super(obra)
			obra.trabajoAlbanileria(100)
			self.descansar()
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