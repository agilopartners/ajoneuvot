require 'spec_helper'

describe "moto_engine_sizes/edit.html.erb" do
  before(:each) do
    @moto_engine_size = assign(:moto_engine_size, stub_model(MotoEngineSize,
      :name => "MyString"
    ))
  end

  it "renders the edit moto_engine_size form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moto_engine_sizes_path(@moto_engine_size), :method => "post" do
      assert_select "input#moto_engine_size_name", :name => "moto_engine_size[name]"
    end
  end
end
