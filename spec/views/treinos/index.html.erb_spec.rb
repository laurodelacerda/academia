require 'spec_helper'

describe "treinos/index" do
  before(:each) do
    assign(:treinos, [
      stub_model(Treino,
        :dataInicio => "Data Inicio",
        :objetivo => "Objetivo",
        :aluno => nil
      ),
      stub_model(Treino,
        :dataInicio => "Data Inicio",
        :objetivo => "Objetivo",
        :aluno => nil
      )
    ])
  end

  it "renders a list of treinos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Data Inicio".to_s, :count => 2
    assert_select "tr>td", :text => "Objetivo".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
