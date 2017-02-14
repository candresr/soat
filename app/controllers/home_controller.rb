class HomeController < ApplicationController
  def index
  end

  def search
    puts params[:q]
  end
end
