class HomeController < ApplicationController
  def index
  end

  def search
    result = Poliza.find_by placa: params[:q]
    if result.nil?
      @placa = 'No hay Poliza Asociada'
    else
      @placa = result
    end
  end
end
