class CreateEntradas < ActiveRecord::Migration[5.0]
  def change
    create_table :entradas do |t|
      t.date :fecha
      t.integer :remision
      t.string :articulo
      t.string :cantidad
      t.string :recibe
      t.string :proveedor
      t.string :autoriza
      t.string :solicita

      t.timestamps
    end
  end
end
