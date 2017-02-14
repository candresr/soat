require 'rails_helper'

RSpec.describe "usuarios/index", type: :view do
  before(:each) do
    assign(:usuarios, [
      Usuario.create!(
        :nombres => "Nombres",
        :apellidos => "Apellidos",
        :tipo_documento => 2,
        :numero => 3,
        :telefono => "Telefono"
      ),
      Usuario.create!(
        :nombres => "Nombres",
        :apellidos => "Apellidos",
        :tipo_documento => 2,
        :numero => 3,
        :telefono => "Telefono"
      )
    ])
  end

  it "renders a list of usuarios" do
    render
    assert_select "tr>td", :text => "Nombres".to_s, :count => 2
    assert_select "tr>td", :text => "Apellidos".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Telefono".to_s, :count => 2
  end
end
