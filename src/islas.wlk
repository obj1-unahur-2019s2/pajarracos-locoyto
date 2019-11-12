import pajrritos.*


class Islas {
	var property alpiste = 10
	var property maiz = 10
	var property avesEnIsla = []
	
	method aveCapitana() { return avesEnIsla.filter { n => n.fuerza().between(1000,3000).max() }}
	method sesionDeRelax() {avesEnIsla.forEach { n => n.relax()}}
	method islaEnPaz() {  return avesEnIsla.all { n => n.estaConforme(self)}}
	

	method avesDeMayorFuerza(ave) { return avesEnIsla.filter { n=> n.fuerza() > ave.fuerza()}.size()}
}

