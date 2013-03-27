require 'spec_helper'

describe "exercicios/new" do
  before(:each) do
    assign(:exercicio, stub_model(Exercicio,
      :descricao => "MyString"
    ).as_new_record)
  end

  it "renders new exercicio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => exercicios_path, :method => "post" do
      assert_select "input#exercicio_descricao", :name => "exercicio[descricao]"
    end
  end
end
