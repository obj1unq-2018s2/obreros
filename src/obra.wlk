class Obra {
	// datos del terreno
	var property ancho = 10
	var property profundidad = 3
	var property cantidadDePisos = 1
	 
	// plantilla
	const property plantilla = #{}
	// materiales, faltan algunos
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
		// este "if" es por la parte de Errores
		if (self.obrerosDisponibles().isEmpty()) {
			self.error("No hay obreros disponibles para trabajar")
		}
		// las distintas partes del enunciado van agregando acciones para cada obrero
		plantilla.forEach { obr => {
			// modelo basico
			obr.consumirMateriales(self)
			// avance de una obra
			obr.registrarAporte(self)
			// pago de jornales
			obr.registrarJornalAdeudado()
		}}
	}
	
	// aporte de cada obrero
	method levantarPared(metrosCuad) { metrosCuadradosConstruidos += metrosCuad }
	method colocarCaniosDeAgua(metros) { metrosDeCaniosDeAguaColocados += metros } 
	method colocarCaniosDeGas(metros) { metrosDeCaniosDeGasColocados += metros }
	method colocarCable(metros) { metrosDeCableColocados += metros }
	
	// materiales
	method descontarLadrillos(cuantos) { ladrillos -= cuantos }
	method descontarCanio(cuanto) { metrosDeCanio -= cuanto }
	method descontarFosforos(cuantos) { fosforos -= cuantos }
	
	// avance de obra
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
	// cantidadDePisos definido para todas las obras, para las casas también se informa 
	var property departamentosPorPiso = 4
	var property habitacionesPorDepartamento = 3
	var property cantidadAscensores = 1
	
	override method cantidadHabitaciones() {
		return habitacionesPorDepartamento * departamentosPorPiso * cantidadDePisos
	}
	
	override method metrosDeCableNecesarios() {
		return super() + 300 * cantidadAscensores
	}
}











