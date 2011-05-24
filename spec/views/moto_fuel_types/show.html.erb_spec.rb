require 'spec_helper'

describe "moto_fuel_types/show.html.erb" do
  before(:each) do
    @moto_fuel_type = assign(:moto_fuel_type, stub_model(MotoFuelType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
