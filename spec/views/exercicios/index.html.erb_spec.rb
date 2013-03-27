require 'spec_helper'

describe "exercicios/index" do
  before(:each) do
    assign(:exercicios, [
      stub_model(Exercicio,
        :descricao => "Descricao"
      ),
      stub_model(Exercicio,
        :descricao => "Descricao"
      )
    ])
  end

  it "renders a list of exercicios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
  end
end
