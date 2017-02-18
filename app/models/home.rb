class Home < ApplicationRecord
    validates :q, :presence => {:message => "Debe ingresar el numero de placa"}
end
