require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe MotoCoverImageNamesController do

  def mock_moto_cover_image_name(stubs={})
    @mock_moto_cover_image_name ||= mock_model(MotoCoverImageName, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all moto_cover_image_names as @moto_cover_image_names" do
      MotoCoverImageName.stub(:all) { [mock_moto_cover_image_name] }
      get :index
      assigns(:moto_cover_image_names).should eq([mock_moto_cover_image_name])
    end
  end

  describe "GET show" do
    it "assigns the requested moto_cover_image_name as @moto_cover_image_name" do
      MotoCoverImageName.stub(:find).with("37") { mock_moto_cover_image_name }
      get :show, :id => "37"
      assigns(:moto_cover_image_name).should be(mock_moto_cover_image_name)
    end
  end

  describe "GET new" do
    it "assigns a new moto_cover_image_name as @moto_cover_image_name" do
      MotoCoverImageName.stub(:new) { mock_moto_cover_image_name }
      get :new
      assigns(:moto_cover_image_name).should be(mock_moto_cover_image_name)
    end
  end

  describe "GET edit" do
    it "assigns the requested moto_cover_image_name as @moto_cover_image_name" do
      MotoCoverImageName.stub(:find).with("37") { mock_moto_cover_image_name }
      get :edit, :id => "37"
      assigns(:moto_cover_image_name).should be(mock_moto_cover_image_name)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created moto_cover_image_name as @moto_cover_image_name" do
        MotoCoverImageName.stub(:new).with({'these' => 'params'}) { mock_moto_cover_image_name(:save => true) }
        post :create, :moto_cover_image_name => {'these' => 'params'}
        assigns(:moto_cover_image_name).should be(mock_moto_cover_image_name)
      end

      it "redirects to the created moto_cover_image_name" do
        MotoCoverImageName.stub(:new) { mock_moto_cover_image_name(:save => true) }
        post :create, :moto_cover_image_name => {}
        response.should redirect_to(moto_cover_image_name_url(mock_moto_cover_image_name))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved moto_cover_image_name as @moto_cover_image_name" do
        MotoCoverImageName.stub(:new).with({'these' => 'params'}) { mock_moto_cover_image_name(:save => false) }
        post :create, :moto_cover_image_name => {'these' => 'params'}
        assigns(:moto_cover_image_name).should be(mock_moto_cover_image_name)
      end

      it "re-renders the 'new' template" do
        MotoCoverImageName.stub(:new) { mock_moto_cover_image_name(:save => false) }
        post :create, :moto_cover_image_name => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested moto_cover_image_name" do
        MotoCoverImageName.stub(:find).with("37") { mock_moto_cover_image_name }
        mock_moto_cover_image_name.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :moto_cover_image_name => {'these' => 'params'}
      end

      it "assigns the requested moto_cover_image_name as @moto_cover_image_name" do
        MotoCoverImageName.stub(:find) { mock_moto_cover_image_name(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:moto_cover_image_name).should be(mock_moto_cover_image_name)
      end

      it "redirects to the moto_cover_image_name" do
        MotoCoverImageName.stub(:find) { mock_moto_cover_image_name(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(moto_cover_image_name_url(mock_moto_cover_image_name))
      end
    end

    describe "with invalid params" do
      it "assigns the moto_cover_image_name as @moto_cover_image_name" do
        MotoCoverImageName.stub(:find) { mock_moto_cover_image_name(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:moto_cover_image_name).should be(mock_moto_cover_image_name)
      end

      it "re-renders the 'edit' template" do
        MotoCoverImageName.stub(:find) { mock_moto_cover_image_name(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested moto_cover_image_name" do
      MotoCoverImageName.stub(:find).with("37") { mock_moto_cover_image_name }
      mock_moto_cover_image_name.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the moto_cover_image_names list" do
      MotoCoverImageName.stub(:find) { mock_moto_cover_image_name }
      delete :destroy, :id => "1"
      response.should redirect_to(moto_cover_image_names_url)
    end
  end

end
