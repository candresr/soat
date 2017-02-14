require 'rails_helper'

RSpec.describe "usuarios/edit", type: :view do
  before(:each) do
    @usuario = assign(:usuario, Usuario.create!(
      :nombres => "MyString",
      :apellidos => "MyString",
      :tipo_documento => 1,
      :numero => 1,
      :telefono => "MyString"
    ))
  end

  it "renders the edit usuario form" do
    render

    assert_select "form[action=?][method=?]", usuario_path(@usuario), "post" do

      assert_select "input#usuario_nombres[name=?]", "usuario[nombres]"

      assert_select "input#usuario_apellidos[name=?]", "usuario[apellidos]"

      assert_select "input#usuario_tipo_documento[name=?]", "usuario[tipo_documento]"

      assert_select "input#usuario_numero[name=?]", "usuario[numero]"

      assert_select "input#usuario_telefono[name=?]", "usuario[telefono]"
    end
  end
end
