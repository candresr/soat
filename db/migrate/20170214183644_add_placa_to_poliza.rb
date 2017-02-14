class AddPlacaToPoliza < ActiveRecord::Migration[5.0]
  def change
    add_column :polizas, :placa, :string
  end
end
