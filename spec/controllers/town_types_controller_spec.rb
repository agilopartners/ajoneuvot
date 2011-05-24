require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe TownTypesController do

  def mock_town_type(stubs={})
    @mock_town_type ||= mock_model(TownType, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all town_types as @town_types" do
      TownType.stub(:all) { [mock_town_type] }
      get :index
      assigns(:town_types).should eq([mock_town_type])
    end
  end

  describe "GET show" do
    it "assigns the requested town_type as @town_type" do
      TownType.stub(:find).with("37") { mock_town_type }
      get :show, :id => "37"
      assigns(:town_type).should be(mock_town_type)
    end
  end

  describe "GET new" do
    it "assigns a new town_type as @town_type" do
      TownType.stub(:new) { mock_town_type }
      get :new
      assigns(:town_type).should be(mock_town_type)
    end
  end

  describe "GET edit" do
    it "assigns the requested town_type as @town_type" do
      TownType.stub(:find).with("37") { mock_town_type }
      get :edit, :id => "37"
      assigns(:town_type).should be(mock_town_type)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created town_type as @town_type" do
        TownType.stub(:new).with({'these' => 'params'}) { mock_town_type(:save => true) }
        post :create, :town_type => {'these' => 'params'}
        assigns(:town_type).should be(mock_town_type)
      end

      it "redirects to the created town_type" do
        TownType.stub(:new) { mock_town_type(:save => true) }
        post :create, :town_type => {}
        response.should redirect_to(town_type_url(mock_town_type))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved town_type as @town_type" do
        TownType.stub(:new).with({'these' => 'params'}) { mock_town_type(:save => false) }
        post :create, :town_type => {'these' => 'params'}
        assigns(:town_type).should be(mock_town_type)
      end

      it "re-renders the 'new' template" do
        TownType.stub(:new) { mock_town_type(:save => false) }
        post :create, :town_type => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested town_type" do
        TownType.stub(:find).with("37") { mock_town_type }
        mock_town_type.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :town_type => {'these' => 'params'}
      end

      it "assigns the requested town_type as @town_type" do
        TownType.stub(:find) { mock_town_type(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:town_type).should be(mock_town_type)
      end

      it "redirects to the town_type" do
        TownType.stub(:find) { mock_town_type(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(town_type_url(mock_town_type))
      end
    end

    describe "with invalid params" do
      it "assigns the town_type as @town_type" do
        TownType.stub(:find) { mock_town_type(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:town_type).should be(mock_town_type)
      end

      it "re-renders the 'edit' template" do
        TownType.stub(:find) { mock_town_type(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested town_type" do
      TownType.stub(:find).with("37") { mock_town_type }
      mock_town_type.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the town_types list" do
      TownType.stub(:find) { mock_town_type }
      delete :destroy, :id => "1"
      response.should redirect_to(town_types_url)
    end
  end

end
