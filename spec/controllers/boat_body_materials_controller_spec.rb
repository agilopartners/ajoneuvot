require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe BoatBodyMaterialsController do

  def mock_boat_body_material(stubs={})
    @mock_boat_body_material ||= mock_model(BoatBodyMaterial, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all boat_body_materials as @boat_body_materials" do
      BoatBodyMaterial.stub(:all) { [mock_boat_body_material] }
      get :index
      assigns(:boat_body_materials).should eq([mock_boat_body_material])
    end
  end

  describe "GET show" do
    it "assigns the requested boat_body_material as @boat_body_material" do
      BoatBodyMaterial.stub(:find).with("37") { mock_boat_body_material }
      get :show, :id => "37"
      assigns(:boat_body_material).should be(mock_boat_body_material)
    end
  end

  describe "GET new" do
    it "assigns a new boat_body_material as @boat_body_material" do
      BoatBodyMaterial.stub(:new) { mock_boat_body_material }
      get :new
      assigns(:boat_body_material).should be(mock_boat_body_material)
    end
  end

  describe "GET edit" do
    it "assigns the requested boat_body_material as @boat_body_material" do
      BoatBodyMaterial.stub(:find).with("37") { mock_boat_body_material }
      get :edit, :id => "37"
      assigns(:boat_body_material).should be(mock_boat_body_material)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created boat_body_material as @boat_body_material" do
        BoatBodyMaterial.stub(:new).with({'these' => 'params'}) { mock_boat_body_material(:save => true) }
        post :create, :boat_body_material => {'these' => 'params'}
        assigns(:boat_body_material).should be(mock_boat_body_material)
      end

      it "redirects to the created boat_body_material" do
        BoatBodyMaterial.stub(:new) { mock_boat_body_material(:save => true) }
        post :create, :boat_body_material => {}
        response.should redirect_to(boat_body_material_url(mock_boat_body_material))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved boat_body_material as @boat_body_material" do
        BoatBodyMaterial.stub(:new).with({'these' => 'params'}) { mock_boat_body_material(:save => false) }
        post :create, :boat_body_material => {'these' => 'params'}
        assigns(:boat_body_material).should be(mock_boat_body_material)
      end

      it "re-renders the 'new' template" do
        BoatBodyMaterial.stub(:new) { mock_boat_body_material(:save => false) }
        post :create, :boat_body_material => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested boat_body_material" do
        BoatBodyMaterial.stub(:find).with("37") { mock_boat_body_material }
        mock_boat_body_material.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :boat_body_material => {'these' => 'params'}
      end

      it "assigns the requested boat_body_material as @boat_body_material" do
        BoatBodyMaterial.stub(:find) { mock_boat_body_material(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:boat_body_material).should be(mock_boat_body_material)
      end

      it "redirects to the boat_body_material" do
        BoatBodyMaterial.stub(:find) { mock_boat_body_material(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(boat_body_material_url(mock_boat_body_material))
      end
    end

    describe "with invalid params" do
      it "assigns the boat_body_material as @boat_body_material" do
        BoatBodyMaterial.stub(:find) { mock_boat_body_material(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:boat_body_material).should be(mock_boat_body_material)
      end

      it "re-renders the 'edit' template" do
        BoatBodyMaterial.stub(:find) { mock_boat_body_material(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested boat_body_material" do
      BoatBodyMaterial.stub(:find).with("37") { mock_boat_body_material }
      mock_boat_body_material.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the boat_body_materials list" do
      BoatBodyMaterial.stub(:find) { mock_boat_body_material }
      delete :destroy, :id => "1"
      response.should redirect_to(boat_body_materials_url)
    end
  end

end