class UsuarioSerializer < ActiveModel::Serializer
  attributes :id, :nombres, :apellidos, :tipo_documento, :numero, :telefono
end
