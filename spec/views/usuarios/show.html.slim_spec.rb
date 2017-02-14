require 'rails_helper'

RSpec.describe "usuarios/show", type: :view do
  before(:each) do
    @usuario = assign(:usuario, Usuario.create!(
      :nombres => "Nombres",
      :apellidos => "Apellidos",
      :tipo_documento => 2,
      :numero => 3,
      :telefono => "Telefono"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombres/)
    expect(rendered).to match(/Apellidos/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Telefono/)
  end
end
