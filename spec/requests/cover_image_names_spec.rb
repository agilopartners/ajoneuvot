require 'spec_helper'

describe "CoverImageNames" do
  describe "GET /cover_image_names" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get cover_image_names_path
      response.status.should be(200)
    end
  end
end
