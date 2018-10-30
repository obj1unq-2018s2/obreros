class Obra {
	
	var obreros = []
	var property ladrillos = 0
	var property canos = 0
	var property fosforos = 0
	var property cable = 0
	var property arandelas = 0
	var property cinta = 0
	
	method vincularObrero(obrero) {
		obreros.add(obrero)
	}	
	
	method desvincularObrero(obrero) {
		obreros.remove(obrero)
	}
	
	method registrarJornada() {
		return obreros.filter({o => not o.estaDeLicencia()})
		.forEach({j => j.jornadaLaboral(self)})	
	}
	
	method jornadaDeTrabajoAlbanil () {
		ladrillos -= 100
	}
	
	method jornadaDeTrabajoGasista() {
		canos -= 3
		fosforos -= 20 
	}
	
	method jornadaDeTrabajoPlomero() {
		canos -= 10
		arandelas -= 30
	}
	
	method jornadaDeTrabajoElectrisista() {
		cable -= 4
		cinta -= 1
	}
	
}
