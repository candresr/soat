require 'rails_helper'

RSpec.describe "polizas/show", type: :view do
  before(:each) do
    @poliza = assign(:poliza, Poliza.create!(
      :clase => "Clase",
      :subtipo => 2,
      :años => 3,
      :numero_pasajero => 4,
      :cilindraje => 5,
      :tonelada => 6,
      :id_usuario => 7,
      :id_pago => 8
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Clase/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
  end
end
