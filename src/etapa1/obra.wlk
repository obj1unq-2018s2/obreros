class Obra {
	
	var obreros = #{}
	var property nivelDeConfort = 10
	var property nivelDeSeguridad = 10
	var property nivelDeEstetica = 10
	var property presupuesto
	
	constructor(_presupuesto, _obreros) {
		presupuesto = _presupuesto
		obreros.addAll(_obreros)	
		obreros.forEach({obrero => obrero.obra(self)})
	}
	
	method trabajoAlbanileria() {
		nivelDeSeguridad += 10
		nivelDeConfort += 15
		nivelDeEstetica += 5		
	}
	
	method trabajoElectricidad() {
		nivelDeSeguridad += 10
		nivelDeConfort += 10
		nivelDeEstetica += 15		
	}
	
	method trabajoPlomeria() {
		nivelDeSeguridad += 20
		nivelDeConfort += 25
		nivelDeEstetica += 20		
	}
	
	method dispararJornada() {
		obreros.forEach({obrero => obrero.trabajar()})
	}
	
	method terminada() {
		return nivelDeSeguridad > 100 and nivelDeConfort > 100  and nivelDeEstetica > 100
	}
	
	
}
