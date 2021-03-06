require 'spec_helper'

describe "moto_prices/index.html.erb" do
  before(:each) do
    assign(:moto_prices, [
      stub_model(MotoPrice,
        :name => "Name"
      ),
      stub_model(MotoPrice,
        :name => "Name"
      )
    ])
  end

  it "renders a list of moto_prices" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
