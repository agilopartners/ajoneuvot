require "spec_helper"

describe MachinePricesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/machine_prices" }.should route_to(:controller => "machine_prices", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/machine_prices/new" }.should route_to(:controller => "machine_prices", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/machine_prices/1" }.should route_to(:controller => "machine_prices", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/machine_prices/1/edit" }.should route_to(:controller => "machine_prices", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/machine_prices" }.should route_to(:controller => "machine_prices", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/machine_prices/1" }.should route_to(:controller => "machine_prices", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/machine_prices/1" }.should route_to(:controller => "machine_prices", :action => "destroy", :id => "1")
    end

  end
end
