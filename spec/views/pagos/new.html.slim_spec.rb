require 'rails_helper'

RSpec.describe "pagos/new", type: :view do
  before(:each) do
    assign(:pago, Pago.new(
      :numero_tcd => 1,
      :nombre_tdc => "MyString",
      :codigo_seguridad => 1,
      :numero_coutas => 1,
      :id_usuario => 1
    ))
  end

  it "renders new pago form" do
    render

    assert_select "form[action=?][method=?]", pagos_path, "post" do

      assert_select "input#pago_numero_tcd[name=?]", "pago[numero_tcd]"

      assert_select "input#pago_nombre_tdc[name=?]", "pago[nombre_tdc]"

      assert_select "input#pago_codigo_seguridad[name=?]", "pago[codigo_seguridad]"

      assert_select "input#pago_numero_coutas[name=?]", "pago[numero_coutas]"

      assert_select "input#pago_id_usuario[name=?]", "pago[id_usuario]"
    end
  end
end
