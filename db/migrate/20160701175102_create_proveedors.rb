class CreateProveedors < ActiveRecord::Migration[5.0]
  def change
    create_table :proveedors do |t|
      t.string :provedor
      t.text :contacto

      
      t.timestamps
    end
  end
end
