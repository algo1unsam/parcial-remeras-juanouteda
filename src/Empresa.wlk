import Remeras.*

class Empresa{
	var pedido = []
	var sucursal
		
		method recibirPedido(unaRemera, unaSucursal){
		
		pedido.add(unaRemera)
		sucursal = unaSucursal	
		
	
		}
		
	method	precioBase(){
		
		return pedido.sum{unaRemera=>unaRemera.costo()*pedido.size()}-sucursal.aplicaDescuento()
	}


	
	
}


class Sucursal inherits Empresa{
	
	var cantRemerasParaDescuento
	var tipoRemera
	method tieneDescuento(){return (cantRemerasParaDescuento < pedido.size())}
	
	method aplicaDescuento(){
		if(self.tieneDescuento())
		return tipoRemera.descuentoSucursal()
		return 0
	}
	
	 method tomarPedido(unaCantidad, unTipo){
		
	//	unaCantidad.times{x=>  new unTipo()}
	}
}