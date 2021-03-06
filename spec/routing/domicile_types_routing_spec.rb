require "spec_helper"

describe DomicileTypesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/domicile_types" }.should route_to(:controller => "domicile_types", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/domicile_types/new" }.should route_to(:controller => "domicile_types", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/domicile_types/1" }.should route_to(:controller => "domicile_types", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/domicile_types/1/edit" }.should route_to(:controller => "domicile_types", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/domicile_types" }.should route_to(:controller => "domicile_types", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/domicile_types/1" }.should route_to(:controller => "domicile_types", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/domicile_types/1" }.should route_to(:controller => "domicile_types", :action => "destroy", :id => "1")
    end

  end
end
