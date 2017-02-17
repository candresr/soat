class CambioColumnaPoliza < ActiveRecord::Migration[5.0]
  def change
	rename_column :polizas, :id_usuario, :usuario_id
	rename_column :polizas, :id_pago, :pago_id
  end
end
