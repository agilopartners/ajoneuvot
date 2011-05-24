require 'spec_helper'

describe "moto_mileages/show.html.erb" do
  before(:each) do
    @moto_mileage = assign(:moto_mileage, stub_model(MotoMileage,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
