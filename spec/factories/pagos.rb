FactoryGirl.define do
  factory :pago do
    numero_tcd 1
    nombre_tdc "MyString"
    fecha_vencimiento "2017-02-14"
    codigo_seguridad 1
    numero_coutas 1
    id_usuario 1
  end
end
