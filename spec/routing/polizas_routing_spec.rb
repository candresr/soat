require "rails_helper"

RSpec.describe PolizasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/polizas").to route_to("polizas#index")
    end

    it "routes to #new" do
      expect(:get => "/polizas/new").to route_to("polizas#new")
    end

    it "routes to #show" do
      expect(:get => "/polizas/1").to route_to("polizas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/polizas/1/edit").to route_to("polizas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/polizas").to route_to("polizas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/polizas/1").to route_to("polizas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/polizas/1").to route_to("polizas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/polizas/1").to route_to("polizas#destroy", :id => "1")
    end

  end
end
