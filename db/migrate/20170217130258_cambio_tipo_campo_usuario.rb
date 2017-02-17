class CambioTipoCampoUsuario < ActiveRecord::Migration[5.0]
  def change
    change_column :usuarios, :tipo_documento, :string
  end
end
