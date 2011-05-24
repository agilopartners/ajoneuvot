require 'spec_helper'

describe "boat_models/index.html.erb" do
  before(:each) do
    assign(:boat_models, [
      stub_model(BoatModel,
        :name => "Name"
      ),
      stub_model(BoatModel,
        :name => "Name"
      )
    ])
  end

  it "renders a list of boat_models" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
