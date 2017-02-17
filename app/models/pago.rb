class Pago < ApplicationRecord
    belongs_to :usuario
    belongs_to :poliza
end
