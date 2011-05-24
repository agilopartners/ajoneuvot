require 'spec_helper'

describe "car_informations/index.html.erb" do
  before(:each) do
    assign(:car_informations, [
      stub_model(CarInformation,
        :name => "MyText"
      ),
      stub_model(CarInformation,
        :name => "MyText"
      )
    ])
  end

  it "renders a list of car_informations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
