require 'rails_helper'

RSpec.describe "pagos/index", type: :view do
  before(:each) do
    assign(:pagos, [
      Pago.create!(
        :numero_tcd => 2,
        :nombre_tdc => "Nombre Tdc",
        :codigo_seguridad => 3,
        :numero_coutas => 4,
        :id_usuario => 5
      ),
      Pago.create!(
        :numero_tcd => 2,
        :nombre_tdc => "Nombre Tdc",
        :codigo_seguridad => 3,
        :numero_coutas => 4,
        :id_usuario => 5
      )
    ])
  end

  it "renders a list of pagos" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Nombre Tdc".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
