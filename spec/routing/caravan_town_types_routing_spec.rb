require "spec_helper"

describe CaravanTownTypesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/caravan_town_types" }.should route_to(:controller => "caravan_town_types", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/caravan_town_types/new" }.should route_to(:controller => "caravan_town_types", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/caravan_town_types/1" }.should route_to(:controller => "caravan_town_types", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/caravan_town_types/1/edit" }.should route_to(:controller => "caravan_town_types", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/caravan_town_types" }.should route_to(:controller => "caravan_town_types", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/caravan_town_types/1" }.should route_to(:controller => "caravan_town_types", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/caravan_town_types/1" }.should route_to(:controller => "caravan_town_types", :action => "destroy", :id => "1")
    end

  end
end
