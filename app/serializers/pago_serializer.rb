class PagoSerializer < ActiveModel::Serializer
  attributes :id, :numero_tcd, :nombre_tdc, :fecha_vencimiento, :codigo_seguridad, :numero_coutas, :id_usuario
end
