require "spec_helper"

describe FuelTypesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/fuel_types" }.should route_to(:controller => "fuel_types", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/fuel_types/new" }.should route_to(:controller => "fuel_types", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/fuel_types/1" }.should route_to(:controller => "fuel_types", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/fuel_types/1/edit" }.should route_to(:controller => "fuel_types", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/fuel_types" }.should route_to(:controller => "fuel_types", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/fuel_types/1" }.should route_to(:controller => "fuel_types", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/fuel_types/1" }.should route_to(:controller => "fuel_types", :action => "destroy", :id => "1")
    end

  end
end
