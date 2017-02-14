require 'rails_helper'

RSpec.describe "polizas/edit", type: :view do
  before(:each) do
    @poliza = assign(:poliza, Poliza.create!(
      :clase => "MyString",
      :subtipo => 1,
      :años => 1,
      :numero_pasajero => 1,
      :cilindraje => 1,
      :tonelada => 1,
      :id_usuario => 1,
      :id_pago => 1
    ))
  end

  it "renders the edit poliza form" do
    render

    assert_select "form[action=?][method=?]", poliza_path(@poliza), "post" do

      assert_select "input#poliza_clase[name=?]", "poliza[clase]"

      assert_select "input#poliza_subtipo[name=?]", "poliza[subtipo]"

      assert_select "input#poliza_años[name=?]", "poliza[años]"

      assert_select "input#poliza_numero_pasajero[name=?]", "poliza[numero_pasajero]"

      assert_select "input#poliza_cilindraje[name=?]", "poliza[cilindraje]"

      assert_select "input#poliza_tonelada[name=?]", "poliza[tonelada]"

      assert_select "input#poliza_id_usuario[name=?]", "poliza[id_usuario]"

      assert_select "input#poliza_id_pago[name=?]", "poliza[id_pago]"
    end
  end
end
