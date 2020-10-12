import accesorios.*
import deposito.*
class Bicis{
	var rodado
	var largoEnCentimetros
	var marca
	const accesorios = []
	var peso = 0
	
	method rodado(numero) {
		 rodado = numero
		 return rodado
	}
	method largoEnCentimetros(numero){
		largoEnCentimetros = numero
		}
	method largo(){
		return largoEnCentimetros
	} 
	
	method ponermarca(nombre){
		marca = nombre
	
	}
	method marca(){
		return marca
	}
	
	method accesorios(cosas){
		accesorios.add(cosas)
		
	}
	method altura(){
		return (rodado * 2.5) + 15
	}
	method velocidadCrucero(){
		return if (largoEnCentimetros > 120){rodado + 6} else {rodado + 2}
	}
	method carga(){
		return accesorios.sum({numero => numero.carga()})
		
	}
	method peso(){
		 peso = (rodado / 2) + accesorios.sum({numero => numero.peso()}) 
		return peso
	}
	method tieneLuz(){
		return accesorios.any({lista => lista.tieneLuz()})
	}
	
	method accesoriosLivianosDeUnaBici(){
		return accesorios.count({lista => lista.peso() < 1.0})
	}
    method accesorios(){
    	return accesorios
    }		

}


