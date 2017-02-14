class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :nombres
      t.string :apellidos
      t.integer :tipo_documento
      t.integer :numero
      t.string :telefono

      t.timestamps
    end
  end
end
