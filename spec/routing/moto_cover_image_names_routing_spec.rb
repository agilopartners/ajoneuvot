require "spec_helper"

describe MotoCoverImageNamesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/moto_cover_image_names" }.should route_to(:controller => "moto_cover_image_names", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/moto_cover_image_names/new" }.should route_to(:controller => "moto_cover_image_names", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/moto_cover_image_names/1" }.should route_to(:controller => "moto_cover_image_names", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/moto_cover_image_names/1/edit" }.should route_to(:controller => "moto_cover_image_names", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/moto_cover_image_names" }.should route_to(:controller => "moto_cover_image_names", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/moto_cover_image_names/1" }.should route_to(:controller => "moto_cover_image_names", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/moto_cover_image_names/1" }.should route_to(:controller => "moto_cover_image_names", :action => "destroy", :id => "1")
    end

  end
end
