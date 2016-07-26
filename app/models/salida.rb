class Salida < ApplicationRecord
	has_and_belongs_to_many :productos
	before_validation :update_stock
	

	private
	def update_stock
	
		 	if existencia >= piezas 
		 		@productos.update( :existencia - self.piezas)
			
		 	 	else
		 	 	self.errors.add( :existencia, "no se pudo procesar")
		 		
		 	end
		
	end

	
end
	
