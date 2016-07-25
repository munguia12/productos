class Producto < ApplicationRecord
	has_many :salidas
  	before_validation :stock
  	

  	def stock
  		if existencia >= stockmin
  			@producto = Producto.new

  		 else existencia < stockmin
  		 	self.errors.add( :existencia, "no se pudo procesar")
  		end
  	end
end
