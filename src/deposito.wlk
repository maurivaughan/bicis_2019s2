import bicis.*
import accesorios.*

class Depositos {
	const bicis = []
	
	method agregarAlDeposito(bici){
		bicis.add(bici)
	}
	method bicisRapidas(){
		return bicis.filter({bici => bici.velocidadCrucero()> 25})
		
	}
	method marca(){
		return bicis.map({bici=> bici.marca()}).asSet()
	}
	method nocturno(){
		return bicis.all({bici=> bici.tieneLuz()})
	}
	method bicicletaParaLlevarCarga(numero){
		return bicis.any({bici => bici.carga()> numero})
	}
	method marcaDeBiciMasRapida(){
		return bicis.max({bici => bici.velocidadCrucero()}).marca()
   }
    method cargaTotalDeLasBicisLargas(){
    	return bicis.filter({bici=> bici.largo()>170}).sum({bici=>bici.carga()})
    }
    method cantidadDeBicisSinAccesorios(){
    	return bicis.filter({bici=> bici.accesorios().isEmpty()}).size()
    }
    }
  
   
    //para agregar un nuevo tipo de accesorio, deberia agregarse en accesorios
    // y agregar los metodos correspondientes para continuar con el polimorfismo
    


