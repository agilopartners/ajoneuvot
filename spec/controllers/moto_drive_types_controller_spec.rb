require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe MotoDriveTypesController do

  def mock_moto_drive_type(stubs={})
    @mock_moto_drive_type ||= mock_model(MotoDriveType, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all moto_drive_types as @moto_drive_types" do
      MotoDriveType.stub(:all) { [mock_moto_drive_type] }
      get :index
      assigns(:moto_drive_types).should eq([mock_moto_drive_type])
    end
  end

  describe "GET show" do
    it "assigns the requested moto_drive_type as @moto_drive_type" do
      MotoDriveType.stub(:find).with("37") { mock_moto_drive_type }
      get :show, :id => "37"
      assigns(:moto_drive_type).should be(mock_moto_drive_type)
    end
  end

  describe "GET new" do
    it "assigns a new moto_drive_type as @moto_drive_type" do
      MotoDriveType.stub(:new) { mock_moto_drive_type }
      get :new
      assigns(:moto_drive_type).should be(mock_moto_drive_type)
    end
  end

  describe "GET edit" do
    it "assigns the requested moto_drive_type as @moto_drive_type" do
      MotoDriveType.stub(:find).with("37") { mock_moto_drive_type }
      get :edit, :id => "37"
      assigns(:moto_drive_type).should be(mock_moto_drive_type)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created moto_drive_type as @moto_drive_type" do
        MotoDriveType.stub(:new).with({'these' => 'params'}) { mock_moto_drive_type(:save => true) }
        post :create, :moto_drive_type => {'these' => 'params'}
        assigns(:moto_drive_type).should be(mock_moto_drive_type)
      end

      it "redirects to the created moto_drive_type" do
        MotoDriveType.stub(:new) { mock_moto_drive_type(:save => true) }
        post :create, :moto_drive_type => {}
        response.should redirect_to(moto_drive_type_url(mock_moto_drive_type))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved moto_drive_type as @moto_drive_type" do
        MotoDriveType.stub(:new).with({'these' => 'params'}) { mock_moto_drive_type(:save => false) }
        post :create, :moto_drive_type => {'these' => 'params'}
        assigns(:moto_drive_type).should be(mock_moto_drive_type)
      end

      it "re-renders the 'new' template" do
        MotoDriveType.stub(:new) { mock_moto_drive_type(:save => false) }
        post :create, :moto_drive_type => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested moto_drive_type" do
        MotoDriveType.stub(:find).with("37") { mock_moto_drive_type }
        mock_moto_drive_type.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :moto_drive_type => {'these' => 'params'}
      end

      it "assigns the requested moto_drive_type as @moto_drive_type" do
        MotoDriveType.stub(:find) { mock_moto_drive_type(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:moto_drive_type).should be(mock_moto_drive_type)
      end

      it "redirects to the moto_drive_type" do
        MotoDriveType.stub(:find) { mock_moto_drive_type(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(moto_drive_type_url(mock_moto_drive_type))
      end
    end

    describe "with invalid params" do
      it "assigns the moto_drive_type as @moto_drive_type" do
        MotoDriveType.stub(:find) { mock_moto_drive_type(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:moto_drive_type).should be(mock_moto_drive_type)
      end

      it "re-renders the 'edit' template" do
        MotoDriveType.stub(:find) { mock_moto_drive_type(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested moto_drive_type" do
      MotoDriveType.stub(:find).with("37") { mock_moto_drive_type }
      mock_moto_drive_type.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the moto_drive_types list" do
      MotoDriveType.stub(:find) { mock_moto_drive_type }
      delete :destroy, :id => "1"
      response.should redirect_to(moto_drive_types_url)
    end
  end

end