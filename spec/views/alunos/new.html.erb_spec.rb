require 'spec_helper'

describe "alunos/new" do
  before(:each) do
    assign(:aluno, stub_model(Aluno,
      :nome => "MyString",
      :idade => 1,
      :sexo => "MyString"
    ).as_new_record)
  end

  it "renders new aluno form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => alunos_path, :method => "post" do
      assert_select "input#aluno_nome", :name => "aluno[nome]"
      assert_select "input#aluno_idade", :name => "aluno[idade]"
      assert_select "input#aluno_sexo", :name => "aluno[sexo]"
    end
  end
end
