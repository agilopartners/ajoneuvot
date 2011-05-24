require "spec_helper"

describe MakeSectionsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/make_sections" }.should route_to(:controller => "make_sections", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/make_sections/new" }.should route_to(:controller => "make_sections", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/make_sections/1" }.should route_to(:controller => "make_sections", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/make_sections/1/edit" }.should route_to(:controller => "make_sections", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/make_sections" }.should route_to(:controller => "make_sections", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/make_sections/1" }.should route_to(:controller => "make_sections", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/make_sections/1" }.should route_to(:controller => "make_sections", :action => "destroy", :id => "1")
    end

  end
end
