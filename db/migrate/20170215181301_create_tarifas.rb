class CreateTarifas < ActiveRecord::Migration[5.0]
  def change
    create_table :tarifas do |t|
      t.integer :codigo
      t.string :clase
      t.string :subtipo
      t.string :edad
      t.float :tasa_comercial
      t.integer :valor
      t.integer :contribucion
      t.integer :subtotal
      t.integer :tasa_runt
      t.integer :total

      t.timestamps
    end
  end
end
