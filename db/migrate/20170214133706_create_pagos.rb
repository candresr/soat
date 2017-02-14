class CreatePagos < ActiveRecord::Migration[5.0]
  def change
    create_table :pagos do |t|
      t.integer :numero_tcd
      t.string :nombre_tdc
      t.date :fecha_vencimiento
      t.integer :codigo_seguridad
      t.integer :numero_coutas
      t.integer :id_usuario

      t.timestamps
    end
  end
end
