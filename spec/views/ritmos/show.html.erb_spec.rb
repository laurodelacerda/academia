require 'spec_helper'

describe "ritmos/show" do
  before(:each) do
    @ritmo = assign(:ritmo, stub_model(Ritmo,
      :quantidade => 1,
      :repeticao => 2,
      :treino => nil,
      :exercicio => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
