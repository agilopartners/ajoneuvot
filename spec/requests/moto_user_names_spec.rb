require 'spec_helper'

describe "MotoUserNames" do
  describe "GET /moto_user_names" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get moto_user_names_path
      response.status.should be(200)
    end
  end
end