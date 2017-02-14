class PolizaSerializer < ActiveModel::Serializer
  attributes :id, :clase, :subtipo, :años, :numero_pasajero, :cilindraje, :tonelada, :id_usuario, :id_pago
end
