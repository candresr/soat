class CambioColumnaPagos < ActiveRecord::Migration[5.0]
  def change
    rename_column :pagos, :id_usuario, :usuario_id
  end
end
