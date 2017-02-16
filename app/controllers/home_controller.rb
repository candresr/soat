class HomeController < ApplicationController
  def index
  end

  def search
    result = Poliza.find_by placa: params[:q]
    if result.nil?
      redirect_to :controller => 'usuarios', :action => 'new'
    else
      session[:current_user] = result.id_usuario
      redirect_to :controller => 'usuarios', :action => 'edit', :id => result.id_usuario
    end
  end
end
