require 'spec_helper'

describe "caravan_model_sections/index.html.erb" do
  before(:each) do
    assign(:caravan_model_sections, [
      stub_model(CaravanModelSection,
        :name => "Name",
        :caravan_make_section_id => 1
      ),
      stub_model(CaravanModelSection,
        :name => "Name",
        :caravan_make_section_id => 1
      )
    ])
  end

  it "renders a list of caravan_model_sections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
