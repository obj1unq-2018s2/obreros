class Obra {
	var obreros=#{}
	var ladrillos
	var cables
	var caniosAgua
	var caniosGas
	var superficie
	var presupuesto
	
	constructor(_superficie, _presupuesto) {
		superficie = _superficie
		presupuesto = _presupuesto
		caniosGas = 2*superficie
		caniosAgua = 10*superficie
		ladrillos = 500*superficie
		cables = 3*superficie	
	}
	
	method superficie() {
		return superficie
	}
	
	method presupuesto() {
		return presupuesto
	}
	
	method ladrillos() {
		return ladrillos
	}
	
	method cables() {
		return cables
	}
	
	method caniosAgua() {
		return caniosAgua
	}
	
	method caniosGas() {
		return caniosGas
	}

	
	method contratarObrero(obrero) {
		obreros.add(obrero)
	}
	
	method despedirObrero(obrero) {
		obreros.remove(obrero)
	}
	
	method incompleta() {
		return self.ladrillos()>0 or self.cables() > 0 
			or self.caniosAgua() > 0 or self.caniosGas() > 0
	}
	
	method trabajoAlbanileria(cantidad) {
		ladrillos=(ladrillos-cantidad).max(0)
	}
	
	method trabajoGasista(cantidad) {
		caniosGas=(caniosGas-cantidad).max(0)
	}
	
	method trabajoPlomeria(cantidad) {
		caniosAgua=(caniosAgua-cantidad).max(0)
	}
	
	method trabajoElectricidad(cantidad) {
		cables=(cables-cantidad).max(0)
	}
	
	method jornadaLaboral() {
		if (self.incompleta()) {
			obreros.forEach({obrero => obrero.trabajar(self)})						
		}
	}
	
}