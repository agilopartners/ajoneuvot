require 'spec_helper'

describe "MotoCoverImageUids" do
  describe "GET /moto_cover_image_uids" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get moto_cover_image_uids_path
      response.status.should be(200)
    end
  end
end
