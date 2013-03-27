require 'spec_helper'

describe "exercicios/edit" do
  before(:each) do
    @exercicio = assign(:exercicio, stub_model(Exercicio,
      :descricao => "MyString"
    ))
  end

  it "renders the edit exercicio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => exercicios_path(@exercicio), :method => "post" do
      assert_select "input#exercicio_descricao", :name => "exercicio[descricao]"
    end
  end
end
