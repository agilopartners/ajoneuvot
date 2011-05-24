require 'spec_helper'

describe "machine_models/show.html.erb" do
  before(:each) do
    @machine_model = assign(:machine_model, stub_model(MachineModel,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
