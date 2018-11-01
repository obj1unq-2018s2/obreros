class Obra {
	// datos del terreno
	var property ancho = 10
	var property profundidad = 3
	var property cantidadDePisos = 1
	 
	// plantilla
	const property plantilla = #{}
	// materiales
	var property ladrillos = 0
	var property metrosDeCanio = 0
	var property fosforos = 0
	// avance de obra
	var property metrosCuadradosConstruidos = 0
	var property metrosDeCaniosDeGasColocados = 0
	var property metrosDeCaniosDeAguaColocados = 0
	var property metrosDeCableColocados = 0	
	
	method incorporarAPlantilla(obrero) { plantilla.add(obrero) }
	method quitarDePlantilla(obrero) {
		if (obrero.estaDeLicencia()) {
			self.error("Las leyes laborales están para respetarse - licencia implica estabilidad laboral")
		}
		plantilla.remove(obrero)
	}
	
	method obrerosDisponibles() { 
		return plantilla.filter { obr => obr.estaDeLicencia() }
	}
	
	method registrarJornadaLaboral() {
		if (self.obrerosDisponibles().isEmpty()) {
			self.error("No hay obreros disponibles para trabajar")
		}
		plantilla.forEach { obr => 
			obr.consumirMateriales(self)
			obr.registrarAporte(self)
			obr.registrarJornalAdeudado()
		}
	}
	
	method levantarPared(metrosCuad) { metrosCuadradosConstruidos += metrosCuad }
	method colocarCaniosDeAgua(metros) { metrosDeCaniosDeAguaColocados += metros } 
	method colocarCaniosDeGas(metros) { metrosDeCaniosDeGasColocados += metros }
	method colocarCable(metros) { metrosDeCableColocados += metros }
	
	method descontarLadrillos(cuantos) { ladrillos -= cuantos }
	method descontarCanio(cuanto) { metrosDeCanio -= cuanto }
	method descontarFosforos(cuantos) { fosforos -= cuantos }
	
	method terminoHabitaciones() {
		return self.metrosCuadradosConstruidos() >= 50 * self.cantidadHabitaciones() 
	}
	
	method instaloCaniosDeGas() { 
		return self.metrosDeCaniosDeGasColocados() >= ((ancho + profundidad) * cantidadDePisos * 5) 
	}
	
	method instaloCaniosDeAgua() {
		return true   // cambiar por la implementacion real
	}
	
	method instaloCables() { 
		return self.metrosDeCableColocados() >= self.metrosDeCableNecesarios()
	}
	
	// se define en un método aparte para poder hacer override en Edificio
	method metrosDeCableNecesarios() {
		return (50 * self.cantidadHabitaciones()) + (100 * self.cantidadDePisos()) 
	}
	
	method estaFinalizada() {
		return 
			self.terminoHabitaciones()
			and self.instaloCaniosDeGas()
			and self.instaloCaniosDeAgua()
			and self.instaloCables()
	}
	
	method cantidadHabitaciones()
}

class Casa inherits Obra {
	var property cantidadHabitaciones
}

class Edificio inherits Obra {
	var property pisos = 5
	var property departamentosPorPiso = 4
	var property habitacionesPorDepartamento = 3
	var property cantidadAscensores = 1
	
	override method cantidadHabitaciones() {
		return habitacionesPorDepartamento * departamentosPorPiso * pisos
	}
	
	override method metrosDeCableNecesarios() {
		return super() + 300 * cantidadAscensores
	}
}











