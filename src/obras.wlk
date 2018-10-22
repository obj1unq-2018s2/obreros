class Obra {
	var property obreros = #{}
	var property directorDeObra
	var property cantidadDePisos
	
	var property cantidadDeParedes
	var property cantidadDeLozas
	var property cantidadDeTechos
	
	var property habilitacionMunicipal
	
	method contratarObreros(_obreros) {
		obreros.addAll(obreros)
	}
	
	method definirDirectorDeObra(_director) {
		directorDeObra = _director
	}
	
	method completarObra() {
		directorDeObra.completarObra()
	} 	
	
}

class ConstruccionDeCasa {
	var property cantidadDeHabitaciones	
}

class ConstruccionDeEdificio {
	var property cantidadDeDepartamentosPorPiso
	var property cantidadDeHabitacionesPorDepto	
}
