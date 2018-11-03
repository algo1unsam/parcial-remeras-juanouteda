class Remera{
	var talle
	var color
	method costo()
}

class RemeraLisa inherits Remera{
	//var property color
	//var property talle
	
	 override method costo(){
		return self.costoSegunColor(talle, color)
		
	}
	method costoSegunTalle(talle, color){
		if ( talle.between(38,40))
		return 80
		else talle.between(41,48)
		return 100 
	}
	
	method costoSegunColor(talle, color){
		if (self.esColorBasico(talle, color))
	return	self.costoSegunTalle(talle, color)
		else
	return	self.costoSegunTalle(talle, color) + (10*self.costoSegunTalle(talle, color))/100
	}
	
	method esColorBasico(talle, color){
		return color.esBasico()
	}
	
	method descuentoSucursal(){
		return 0.1
	}
	
}

class RemeraBordada inherits RemeraLisa{
	   var colores=[]
	   
	   method agregarColor(unColor){
	   	colores.add(unColor)
	   }
	   
	   method costoBordado(){
	   return	 (colores.size()*10).min(20)
	   }
	   
	   override method costo(){
	   	return super() + self.costoBordado()
	   }
	   
	   method descuentoSucusal(){
	   	return 0
	   }
	   
	   
}

class RemeraSublimada inherits RemeraLisa{
	var alto
	var ancho
	var marcaSublimado
	
	override method costo(){
		return super() + self.costoSublimado()
	}
	
	method costoSublimado(){
		if(marcaSublimado.esMarcaComercial())
		return self.superficie() * 0.5 + marcaSublimado.derechosDeAutor()
		else return self.superficie() * 0.5
	}
	
	method superficie(){
		return alto*ancho
	}
	
	override method descuentoSucursal(){
		if(marcaSublimado.esMarcaComercial())
		return 0.2
		else return 0.1
	}
}

class Marca{
	var importeDerechoAutor
	var property esMarcaComercial = true
	
	method derechosDeAutor(){
		return importeDerechoAutor
	}
}

class Color{
	 var property esBasico = true
}


