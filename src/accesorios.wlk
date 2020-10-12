import bicis.*
import deposito.*

class Farolito{
	const tieneLuz = true
	
	method carga(){
		return 0
	}
	method peso(){
		return 0.5
	}
	method tieneLuz(){
		return tieneLuz
}
}
class Canasto{
	var volumen
	
	method volumen(numero){
		volumen = numero
	}
	method peso (){
		return volumen / 10
	}
	method carga(){
		return volumen * 2
	}
	
	method tieneLuz(){
		return false
	}	
}

class MorralDeBici{
	var carga = 0
	const ojoDeGato = false
	var largoEnCentimetros
	
	method largoEnCentimetros(numero){
	     largoEnCentimetros = numero
	}
	method peso(){
		return 1.2
	}
	
	method carga(){
		carga = largoEnCentimetros / 3
		return carga
	}
	method ojoDeGato(){
		return ojoDeGato
	} 
	method tieneLuz(){
		return ojoDeGato
	}	
	}
		//
