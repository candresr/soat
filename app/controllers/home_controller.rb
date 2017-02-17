class HomeController < ApplicationController
  def index
  end

  def search
    result = Poliza.find_by placa: params[:q]
    if result.nil?
      redirect_to :controller => 'usuarios', :action => 'new'
    else
      session[:current_user] = result.usuario_id
      session[:current_poliza] = result.id
      redirect_to :controller => 'usuarios', :action => 'edit', :id => result.usuario_id
    end
  end
end
