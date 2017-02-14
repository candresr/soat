require 'rails_helper'

RSpec.describe "polizas/index", type: :view do
  before(:each) do
    assign(:polizas, [
      Poliza.create!(
        :clase => "Clase",
        :subtipo => 2,
        :años => 3,
        :numero_pasajero => 4,
        :cilindraje => 5,
        :tonelada => 6,
        :id_usuario => 7,
        :id_pago => 8
      ),
      Poliza.create!(
        :clase => "Clase",
        :subtipo => 2,
        :años => 3,
        :numero_pasajero => 4,
        :cilindraje => 5,
        :tonelada => 6,
        :id_usuario => 7,
        :id_pago => 8
      )
    ])
  end

  it "renders a list of polizas" do
    render
    assert_select "tr>td", :text => "Clase".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
  end
end
