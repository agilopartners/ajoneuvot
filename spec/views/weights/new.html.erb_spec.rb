require 'spec_helper'

describe "weights/new.html.erb" do
  before(:each) do
    assign(:weight, stub_model(Weight,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new weight form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => weights_path, :method => "post" do
      assert_select "input#weight_name", :name => "weight[name]"
    end
  end
end
