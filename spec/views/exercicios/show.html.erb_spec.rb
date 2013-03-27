require 'spec_helper'

describe "exercicios/show" do
  before(:each) do
    @exercicio = assign(:exercicio, stub_model(Exercicio,
      :descricao => "Descricao"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
  end
end
