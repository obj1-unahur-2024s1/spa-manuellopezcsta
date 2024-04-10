
object olivia {
	var gradoDeConcentracion = 6
	method gradoDeConcentracion() {
		return gradoDeConcentracion
	}
	method recibirMasajes(){
		gradoDeConcentracion += 3
	}
	method discutir(){
		gradoDeConcentracion -= 1
		gradoDeConcentracion = 0.max(gradoDeConcentracion)
	}
	
	// El ejercicio no lo pide pero agregamos este metodo o sino no seria posible..
	method tomarBanioVapor()
	{
		
	}
}

object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	method recibirMasajes(){
		esFeliz = true
	}
	method tomarBanioVapor(){
		peso -= 500
		peso = 0.max(peso)
		tieneSed = true
	}
	method tomarAgua(){
		tieneSed = false
	}
	method comerFideos(){
		peso += 250
		tieneSed = true
	}
	method correr(){
		peso -= 300
		peso = 0.max(peso)
	}
	method verNoticiero(){
		esFeliz = false
	}
	method estaPerfecto(){
		return esFeliz && not tieneSed && peso.between(50000,70000)
	}
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro {
	var contracturado =  0
	var pielGrasosa = false
	method recibirMasajes(){
		contracturado -= 2
		contracturado = contracturado.max(0)
	}
	method tomarBanioVapor(){
		pielGrasosa = false
	}
	method comerBigMac(){
		pielGrasosa = true
	}
	method bajarALaFosa(){
		pielGrasosa = true
		contracturado += 1
	}
	method jugarAlPaddle(){
		contracturado += 3
	}
	method diaDeTrabajo(){
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
}

object spa {
	method atender(persona){
		persona.recibirMasajes()
		persona.tomarBanioVapor()
	}
}
