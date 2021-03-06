require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe CaravanCoverImageNamesController do

  def mock_caravan_cover_image_name(stubs={})
    @mock_caravan_cover_image_name ||= mock_model(CaravanCoverImageName, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all caravan_cover_image_names as @caravan_cover_image_names" do
      CaravanCoverImageName.stub(:all) { [mock_caravan_cover_image_name] }
      get :index
      assigns(:caravan_cover_image_names).should eq([mock_caravan_cover_image_name])
    end
  end

  describe "GET show" do
    it "assigns the requested caravan_cover_image_name as @caravan_cover_image_name" do
      CaravanCoverImageName.stub(:find).with("37") { mock_caravan_cover_image_name }
      get :show, :id => "37"
      assigns(:caravan_cover_image_name).should be(mock_caravan_cover_image_name)
    end
  end

  describe "GET new" do
    it "assigns a new caravan_cover_image_name as @caravan_cover_image_name" do
      CaravanCoverImageName.stub(:new) { mock_caravan_cover_image_name }
      get :new
      assigns(:caravan_cover_image_name).should be(mock_caravan_cover_image_name)
    end
  end

  describe "GET edit" do
    it "assigns the requested caravan_cover_image_name as @caravan_cover_image_name" do
      CaravanCoverImageName.stub(:find).with("37") { mock_caravan_cover_image_name }
      get :edit, :id => "37"
      assigns(:caravan_cover_image_name).should be(mock_caravan_cover_image_name)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created caravan_cover_image_name as @caravan_cover_image_name" do
        CaravanCoverImageName.stub(:new).with({'these' => 'params'}) { mock_caravan_cover_image_name(:save => true) }
        post :create, :caravan_cover_image_name => {'these' => 'params'}
        assigns(:caravan_cover_image_name).should be(mock_caravan_cover_image_name)
      end

      it "redirects to the created caravan_cover_image_name" do
        CaravanCoverImageName.stub(:new) { mock_caravan_cover_image_name(:save => true) }
        post :create, :caravan_cover_image_name => {}
        response.should redirect_to(caravan_cover_image_name_url(mock_caravan_cover_image_name))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved caravan_cover_image_name as @caravan_cover_image_name" do
        CaravanCoverImageName.stub(:new).with({'these' => 'params'}) { mock_caravan_cover_image_name(:save => false) }
        post :create, :caravan_cover_image_name => {'these' => 'params'}
        assigns(:caravan_cover_image_name).should be(mock_caravan_cover_image_name)
      end

      it "re-renders the 'new' template" do
        CaravanCoverImageName.stub(:new) { mock_caravan_cover_image_name(:save => false) }
        post :create, :caravan_cover_image_name => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested caravan_cover_image_name" do
        CaravanCoverImageName.stub(:find).with("37") { mock_caravan_cover_image_name }
        mock_caravan_cover_image_name.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :caravan_cover_image_name => {'these' => 'params'}
      end

      it "assigns the requested caravan_cover_image_name as @caravan_cover_image_name" do
        CaravanCoverImageName.stub(:find) { mock_caravan_cover_image_name(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:caravan_cover_image_name).should be(mock_caravan_cover_image_name)
      end

      it "redirects to the caravan_cover_image_name" do
        CaravanCoverImageName.stub(:find) { mock_caravan_cover_image_name(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(caravan_cover_image_name_url(mock_caravan_cover_image_name))
      end
    end

    describe "with invalid params" do
      it "assigns the caravan_cover_image_name as @caravan_cover_image_name" do
        CaravanCoverImageName.stub(:find) { mock_caravan_cover_image_name(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:caravan_cover_image_name).should be(mock_caravan_cover_image_name)
      end

      it "re-renders the 'edit' template" do
        CaravanCoverImageName.stub(:find) { mock_caravan_cover_image_name(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested caravan_cover_image_name" do
      CaravanCoverImageName.stub(:find).with("37") { mock_caravan_cover_image_name }
      mock_caravan_cover_image_name.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the caravan_cover_image_names list" do
      CaravanCoverImageName.stub(:find) { mock_caravan_cover_image_name }
      delete :destroy, :id => "1"
      response.should redirect_to(caravan_cover_image_names_url)
    end
  end

end
