require 'spec_helper'

describe "ritmos/edit" do
  before(:each) do
    @ritmo = assign(:ritmo, stub_model(Ritmo,
      :quantidade => 1,
      :repeticao => 1,
      :treino => nil,
      :exercicio => nil
    ))
  end

  it "renders the edit ritmo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ritmos_path(@ritmo), :method => "post" do
      assert_select "input#ritmo_quantidade", :name => "ritmo[quantidade]"
      assert_select "input#ritmo_repeticao", :name => "ritmo[repeticao]"
      assert_select "input#ritmo_treino", :name => "ritmo[treino]"
      assert_select "input#ritmo_exercicio", :name => "ritmo[exercicio]"
    end
  end
end
