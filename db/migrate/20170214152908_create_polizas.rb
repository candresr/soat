class CreatePolizas < ActiveRecord::Migration[5.0]
  def change
    create_table :polizas do |t|
      t.string :clase
      t.integer :subtipo
      t.integer :años
      t.integer :numero_pasajero
      t.integer :cilindraje
      t.integer :tonelada
      t.integer :id_usuario
      t.integer :id_pago

      t.timestamps
    end
  end
end
