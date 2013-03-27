require 'spec_helper'

describe "treinos/show" do
  before(:each) do
    @treino = assign(:treino, stub_model(Treino,
      :dataInicio => "Data Inicio",
      :objetivo => "Objetivo",
      :aluno => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Data Inicio/)
    rendered.should match(/Objetivo/)
    rendered.should match(//)
  end
end
