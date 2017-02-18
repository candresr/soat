class Pago < ApplicationRecord
    belongs_to :usuario
    belongs_to :poliza

    validates :numero_tcd, :presence => {:message => "Usted debe ingresar un Numero Valido"}
    validates :nombre_tdc, :presence => {:message => "Usted debe ingresar el nombre"}
    validates :fecha_vencimiento, :presence => {:message => "Usted debe ingresar la fecha"}
    validates :codigo_seguridad, :presence => {:message => "Usted debe ingresar el codigo de seguridad"}
    validates :numero_coutas, :presence => {:message => "Usted debe ingresar el numero de cuotas"}
end