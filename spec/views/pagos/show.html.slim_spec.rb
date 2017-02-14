require 'rails_helper'

RSpec.describe "pagos/show", type: :view do
  before(:each) do
    @pago = assign(:pago, Pago.create!(
      :numero_tcd => 2,
      :nombre_tdc => "Nombre Tdc",
      :codigo_seguridad => 3,
      :numero_coutas => 4,
      :id_usuario => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Nombre Tdc/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
