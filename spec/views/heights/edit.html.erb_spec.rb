require 'spec_helper'

describe "heights/edit.html.erb" do
  before(:each) do
    @height = assign(:height, stub_model(Height,
      :name => "MyString"
    ))
  end

  it "renders the edit height form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => heights_path(@height), :method => "post" do
      assert_select "input#height_name", :name => "height[name]"
    end
  end
end
