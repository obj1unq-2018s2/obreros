class Obra {
	var obreros=#{}
	var property ladrillos
	var property cables
	var property caniosAgua
	var property caniosGas
	
	constructor(superficie, presupuesto) {
		
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
	
	method jornadaLaboral() {
		if (self.incompleta()) {
			obreros.forEach({obrero => obrero.trabajar(self)})						
		}
	}
	
}