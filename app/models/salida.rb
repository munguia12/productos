class Salida < ApplicationRecord
	
	before_validation :update_stock
	

	private
	def update_stock
		@productos = Producto.all
		existencia = piezas 
		 	sustraccion = (existencia - self.piezas)
		 	if self.piezas.nil?
		 	 elsif sustraccion >= existencia
		 	 	self.errors.add( :existencia, "no hay suficientes productos para dar de baja")
		 	 elsif sustraccion == 0
		 	 		@productos.update(existencia: existencia - self.piezas)
		 	 	else
		 	 	self.errors.add( :existencia, "no se pudo procesar")
		 		
		 	end
		
	end

	
end
	
