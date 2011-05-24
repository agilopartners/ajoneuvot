require 'spec_helper'

describe "moto_make_sections/show.html.erb" do
  before(:each) do
    @moto_make_section = assign(:moto_make_section, stub_model(MotoMakeSection,
      :name => "Name",
      :type_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
