require 'spec_helper'

describe "machine_models/new.html.erb" do
  before(:each) do
    assign(:machine_model, stub_model(MachineModel,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new machine_model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => machine_models_path, :method => "post" do
      assert_select "input#machine_model_name", :name => "machine_model[name]"
    end
  end
end
