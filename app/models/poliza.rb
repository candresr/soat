class Poliza < ApplicationRecord
    belongs_to :usuario
    belongs_to :pago
    belongs_to :tarifa
end
