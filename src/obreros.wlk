import uocra.*

class Obrero {
	var property estaDeLicencia = false
	var property jornalesAdeudados = 0 
	
	method registrarJornalAdeudado() { jornalesAdeudados += 1 }
}

class Albanil inherits Obrero {
	method consumirMateriales(obra) {
		obra.descontarLadrillos(100)
	}
	
	method registrarAporte(obra) {
		obra.levantarPared(3)
	}
	
	// uno de los requerimientos de la parte "Pago de jornales"
	// incluir metodos similares en las otras subclases de Obrero
	method cuantoTieneParaCobrar() {
		return self.jornalesAdeudados() * uocra.jornalAlbanil()
	}
}

class Gasista inherits Obrero {
	method consumirMateriales(obra) {
		obra.descontarCanio(3)
		obra.descontarFosforos(20)
	}

	method registrarAporte(obra) {
		obra.colocarCaniosDeGas(3)
	}
}

// faltan Plomero y Electricista  