require 'spec_helper'

describe "BoatEngineFuelTypes" do
  describe "GET /boat_engine_fuel_types" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get boat_engine_fuel_types_path
      response.status.should be(200)
    end
  end
end
