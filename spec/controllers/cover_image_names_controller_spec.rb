require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe CoverImageNamesController do

  def mock_cover_image_name(stubs={})
    @mock_cover_image_name ||= mock_model(CoverImageName, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all cover_image_names as @cover_image_names" do
      CoverImageName.stub(:all) { [mock_cover_image_name] }
      get :index
      assigns(:cover_image_names).should eq([mock_cover_image_name])
    end
  end

  describe "GET show" do
    it "assigns the requested cover_image_name as @cover_image_name" do
      CoverImageName.stub(:find).with("37") { mock_cover_image_name }
      get :show, :id => "37"
      assigns(:cover_image_name).should be(mock_cover_image_name)
    end
  end

  describe "GET new" do
    it "assigns a new cover_image_name as @cover_image_name" do
      CoverImageName.stub(:new) { mock_cover_image_name }
      get :new
      assigns(:cover_image_name).should be(mock_cover_image_name)
    end
  end

  describe "GET edit" do
    it "assigns the requested cover_image_name as @cover_image_name" do
      CoverImageName.stub(:find).with("37") { mock_cover_image_name }
      get :edit, :id => "37"
      assigns(:cover_image_name).should be(mock_cover_image_name)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created cover_image_name as @cover_image_name" do
        CoverImageName.stub(:new).with({'these' => 'params'}) { mock_cover_image_name(:save => true) }
        post :create, :cover_image_name => {'these' => 'params'}
        assigns(:cover_image_name).should be(mock_cover_image_name)
      end

      it "redirects to the created cover_image_name" do
        CoverImageName.stub(:new) { mock_cover_image_name(:save => true) }
        post :create, :cover_image_name => {}
        response.should redirect_to(cover_image_name_url(mock_cover_image_name))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved cover_image_name as @cover_image_name" do
        CoverImageName.stub(:new).with({'these' => 'params'}) { mock_cover_image_name(:save => false) }
        post :create, :cover_image_name => {'these' => 'params'}
        assigns(:cover_image_name).should be(mock_cover_image_name)
      end

      it "re-renders the 'new' template" do
        CoverImageName.stub(:new) { mock_cover_image_name(:save => false) }
        post :create, :cover_image_name => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested cover_image_name" do
        CoverImageName.stub(:find).with("37") { mock_cover_image_name }
        mock_cover_image_name.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :cover_image_name => {'these' => 'params'}
      end

      it "assigns the requested cover_image_name as @cover_image_name" do
        CoverImageName.stub(:find) { mock_cover_image_name(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:cover_image_name).should be(mock_cover_image_name)
      end

      it "redirects to the cover_image_name" do
        CoverImageName.stub(:find) { mock_cover_image_name(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(cover_image_name_url(mock_cover_image_name))
      end
    end

    describe "with invalid params" do
      it "assigns the cover_image_name as @cover_image_name" do
        CoverImageName.stub(:find) { mock_cover_image_name(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:cover_image_name).should be(mock_cover_image_name)
      end

      it "re-renders the 'edit' template" do
        CoverImageName.stub(:find) { mock_cover_image_name(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested cover_image_name" do
      CoverImageName.stub(:find).with("37") { mock_cover_image_name }
      mock_cover_image_name.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the cover_image_names list" do
      CoverImageName.stub(:find) { mock_cover_image_name }
      delete :destroy, :id => "1"
      response.should redirect_to(cover_image_names_url)
    end
  end

end
