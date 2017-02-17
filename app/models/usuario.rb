class Usuario < ApplicationRecord
    has_many :polizas
    has_many :pagos
end
