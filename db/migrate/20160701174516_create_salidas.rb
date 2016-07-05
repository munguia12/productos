class CreateSalidas < ActiveRecord::Migration[5.0]
  def change
    create_table :salidas do |t|
      t.date :fecha
      t.integer :numero
      t.string :articulo
      t.integer :piezas
      t.string :solicita
      t.string :autoriza

      t.timestamps
    end
  end
end
