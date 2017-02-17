class ChangeIntegerLimitInPagos < ActiveRecord::Migration[5.0]
  def change
    change_column :pagos, :numero_tcd, :integer, limit: 8
  end
end
