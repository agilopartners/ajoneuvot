require 'spec_helper'

describe "car_weights/show.html.erb" do
  before(:each) do
    @car_weight = assign(:car_weight, stub_model(CarWeight,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
