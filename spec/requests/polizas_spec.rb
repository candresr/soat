require 'rails_helper'

RSpec.describe "Polizas", type: :request do
  describe "GET /polizas" do
    it "works! (now write some real specs)" do
      get polizas_path
      expect(response).to have_http_status(200)
    end
  end
end
