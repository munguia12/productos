class CreatePiezasexistencia < ActiveRecord::Migration[5.0]
  def change
    create_table :piezasexistencia do |t|

      t.timestamps
    end
  end
end
