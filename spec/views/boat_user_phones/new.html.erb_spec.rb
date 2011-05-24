require 'spec_helper'

describe "boat_user_phones/new.html.erb" do
  before(:each) do
    assign(:boat_user_phone, stub_model(BoatUserPhone,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new boat_user_phone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boat_user_phones_path, :method => "post" do
      assert_select "input#boat_user_phone_name", :name => "boat_user_phone[name]"
    end
  end
end
