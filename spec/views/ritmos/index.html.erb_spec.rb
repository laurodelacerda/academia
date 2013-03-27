require 'spec_helper'

describe "ritmos/index" do
  before(:each) do
    assign(:ritmos, [
      stub_model(Ritmo,
        :quantidade => 1,
        :repeticao => 2,
        :treino => nil,
        :exercicio => nil
      ),
      stub_model(Ritmo,
        :quantidade => 1,
        :repeticao => 2,
        :treino => nil,
        :exercicio => nil
      )
    ])
  end

  it "renders a list of ritmos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
