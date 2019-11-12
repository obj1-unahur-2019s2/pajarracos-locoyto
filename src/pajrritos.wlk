import islas.*

class Aves {
	method fuerza()
	method recibeUnDisgusto()
	method irAlGimnacio ()
	method relax()
	method estaConforme(n)
}

class Aguilucho inherits Aves {
	var property velocidad = 20 // km/O
	override method fuerza() {return  if (velocidad < 60) { 180 } else { velocidad * 3} }
	override method recibeUnDisgusto() {  velocidad = velocidad * 2}
	override method irAlGimnacio () {}
	override method relax() {velocidad -= 10}
	override method estaConforme(n) {return n.maiz() <= 8 }
	
}

class Albatros inherits Aves {
	var  peso = 4000 // g.
	var masaMuscular = 600
	override method fuerza() {return  if (peso < 6000) { masaMuscular } else { masaMuscular / 2} }
	override method recibeUnDisgusto() {  peso = peso + 800}
	override method irAlGimnacio () { peso += 500  masaMuscular += 500}
	override method relax() {peso -= 300}
	override method estaConforme(n) {return n.avesDeMayorFuerza(self) >= 2 }
}

class Palomas inherits Aves {
	var property ira = 200 // km/O
	override method fuerza() {return ira * 2 }
	override method recibeUnDisgusto() {  ira += 300}
	override method irAlGimnacio () {}
	override method relax() {ira -= 10}
	override method estaConforme(n) {return n.avesDeMayorFuerza(self) >= 2 }
}

class AguiluchoColorado inherits Aguilucho {
	override method fuerza() { return super() + 400 }
	
}

class PalomaDeTorcaza inherits Palomas {
	var huevos = 3
	
	override method fuerza() = huevos * 100
	override method recibeUnDisgusto() { super() huevos += 1 }	
}