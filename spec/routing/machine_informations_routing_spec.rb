require "spec_helper"

describe MachineInformationsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/machine_informations" }.should route_to(:controller => "machine_informations", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/machine_informations/new" }.should route_to(:controller => "machine_informations", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/machine_informations/1" }.should route_to(:controller => "machine_informations", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/machine_informations/1/edit" }.should route_to(:controller => "machine_informations", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/machine_informations" }.should route_to(:controller => "machine_informations", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/machine_informations/1" }.should route_to(:controller => "machine_informations", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/machine_informations/1" }.should route_to(:controller => "machine_informations", :action => "destroy", :id => "1")
    end

  end
end
