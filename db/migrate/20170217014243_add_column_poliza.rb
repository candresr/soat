class AddColumnPoliza < ActiveRecord::Migration[5.0]
  def change
    add_column :polizas, :tarifa_id, :integer
  end
end
