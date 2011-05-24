require 'spec_helper'

describe "registration_numbers/index.html.erb" do
  before(:each) do
    assign(:registration_numbers, [
      stub_model(RegistrationNumber,
        :name => "Name"
      ),
      stub_model(RegistrationNumber,
        :name => "Name"
      )
    ])
  end

  it "renders a list of registration_numbers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
