class Producto < ApplicationRecord
	has_and_belongs_to_many :salidas
  	before_validation :stock


  	def stock
  		if existencia >= stockmin
  			@producto = Producto.new

  		 else existencia < stockmin
  		 	self.errors.add("no se pudo procesar")
  		end
  	end
end
