class Producto < ApplicationRecord
	has_many :salida
  def departur
    @productos = Producto.all
  end
end
