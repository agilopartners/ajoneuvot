require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe BoatDraughtsController do

  def mock_boat_draught(stubs={})
    @mock_boat_draught ||= mock_model(BoatDraught, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all boat_draughts as @boat_draughts" do
      BoatDraught.stub(:all) { [mock_boat_draught] }
      get :index
      assigns(:boat_draughts).should eq([mock_boat_draught])
    end
  end

  describe "GET show" do
    it "assigns the requested boat_draught as @boat_draught" do
      BoatDraught.stub(:find).with("37") { mock_boat_draught }
      get :show, :id => "37"
      assigns(:boat_draught).should be(mock_boat_draught)
    end
  end

  describe "GET new" do
    it "assigns a new boat_draught as @boat_draught" do
      BoatDraught.stub(:new) { mock_boat_draught }
      get :new
      assigns(:boat_draught).should be(mock_boat_draught)
    end
  end

  describe "GET edit" do
    it "assigns the requested boat_draught as @boat_draught" do
      BoatDraught.stub(:find).with("37") { mock_boat_draught }
      get :edit, :id => "37"
      assigns(:boat_draught).should be(mock_boat_draught)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created boat_draught as @boat_draught" do
        BoatDraught.stub(:new).with({'these' => 'params'}) { mock_boat_draught(:save => true) }
        post :create, :boat_draught => {'these' => 'params'}
        assigns(:boat_draught).should be(mock_boat_draught)
      end

      it "redirects to the created boat_draught" do
        BoatDraught.stub(:new) { mock_boat_draught(:save => true) }
        post :create, :boat_draught => {}
        response.should redirect_to(boat_draught_url(mock_boat_draught))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved boat_draught as @boat_draught" do
        BoatDraught.stub(:new).with({'these' => 'params'}) { mock_boat_draught(:save => false) }
        post :create, :boat_draught => {'these' => 'params'}
        assigns(:boat_draught).should be(mock_boat_draught)
      end

      it "re-renders the 'new' template" do
        BoatDraught.stub(:new) { mock_boat_draught(:save => false) }
        post :create, :boat_draught => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested boat_draught" do
        BoatDraught.stub(:find).with("37") { mock_boat_draught }
        mock_boat_draught.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :boat_draught => {'these' => 'params'}
      end

      it "assigns the requested boat_draught as @boat_draught" do
        BoatDraught.stub(:find) { mock_boat_draught(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:boat_draught).should be(mock_boat_draught)
      end

      it "redirects to the boat_draught" do
        BoatDraught.stub(:find) { mock_boat_draught(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(boat_draught_url(mock_boat_draught))
      end
    end

    describe "with invalid params" do
      it "assigns the boat_draught as @boat_draught" do
        BoatDraught.stub(:find) { mock_boat_draught(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:boat_draught).should be(mock_boat_draught)
      end

      it "re-renders the 'edit' template" do
        BoatDraught.stub(:find) { mock_boat_draught(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested boat_draught" do
      BoatDraught.stub(:find).with("37") { mock_boat_draught }
      mock_boat_draught.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the boat_draughts list" do
      BoatDraught.stub(:find) { mock_boat_draught }
      delete :destroy, :id => "1"
      response.should redirect_to(boat_draughts_url)
    end
  end

end
