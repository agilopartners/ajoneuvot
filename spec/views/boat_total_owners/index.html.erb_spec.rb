require 'spec_helper'

describe "boat_total_owners/index.html.erb" do
  before(:each) do
    assign(:boat_total_owners, [
      stub_model(BoatTotalOwner,
        :name => "Name"
      ),
      stub_model(BoatTotalOwner,
        :name => "Name"
      )
    ])
  end

  it "renders a list of boat_total_owners" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
