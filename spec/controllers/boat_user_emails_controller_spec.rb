require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe BoatUserEmailsController do

  def mock_boat_user_email(stubs={})
    @mock_boat_user_email ||= mock_model(BoatUserEmail, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all boat_user_emails as @boat_user_emails" do
      BoatUserEmail.stub(:all) { [mock_boat_user_email] }
      get :index
      assigns(:boat_user_emails).should eq([mock_boat_user_email])
    end
  end

  describe "GET show" do
    it "assigns the requested boat_user_email as @boat_user_email" do
      BoatUserEmail.stub(:find).with("37") { mock_boat_user_email }
      get :show, :id => "37"
      assigns(:boat_user_email).should be(mock_boat_user_email)
    end
  end

  describe "GET new" do
    it "assigns a new boat_user_email as @boat_user_email" do
      BoatUserEmail.stub(:new) { mock_boat_user_email }
      get :new
      assigns(:boat_user_email).should be(mock_boat_user_email)
    end
  end

  describe "GET edit" do
    it "assigns the requested boat_user_email as @boat_user_email" do
      BoatUserEmail.stub(:find).with("37") { mock_boat_user_email }
      get :edit, :id => "37"
      assigns(:boat_user_email).should be(mock_boat_user_email)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created boat_user_email as @boat_user_email" do
        BoatUserEmail.stub(:new).with({'these' => 'params'}) { mock_boat_user_email(:save => true) }
        post :create, :boat_user_email => {'these' => 'params'}
        assigns(:boat_user_email).should be(mock_boat_user_email)
      end

      it "redirects to the created boat_user_email" do
        BoatUserEmail.stub(:new) { mock_boat_user_email(:save => true) }
        post :create, :boat_user_email => {}
        response.should redirect_to(boat_user_email_url(mock_boat_user_email))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved boat_user_email as @boat_user_email" do
        BoatUserEmail.stub(:new).with({'these' => 'params'}) { mock_boat_user_email(:save => false) }
        post :create, :boat_user_email => {'these' => 'params'}
        assigns(:boat_user_email).should be(mock_boat_user_email)
      end

      it "re-renders the 'new' template" do
        BoatUserEmail.stub(:new) { mock_boat_user_email(:save => false) }
        post :create, :boat_user_email => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested boat_user_email" do
        BoatUserEmail.stub(:find).with("37") { mock_boat_user_email }
        mock_boat_user_email.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :boat_user_email => {'these' => 'params'}
      end

      it "assigns the requested boat_user_email as @boat_user_email" do
        BoatUserEmail.stub(:find) { mock_boat_user_email(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:boat_user_email).should be(mock_boat_user_email)
      end

      it "redirects to the boat_user_email" do
        BoatUserEmail.stub(:find) { mock_boat_user_email(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(boat_user_email_url(mock_boat_user_email))
      end
    end

    describe "with invalid params" do
      it "assigns the boat_user_email as @boat_user_email" do
        BoatUserEmail.stub(:find) { mock_boat_user_email(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:boat_user_email).should be(mock_boat_user_email)
      end

      it "re-renders the 'edit' template" do
        BoatUserEmail.stub(:find) { mock_boat_user_email(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested boat_user_email" do
      BoatUserEmail.stub(:find).with("37") { mock_boat_user_email }
      mock_boat_user_email.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the boat_user_emails list" do
      BoatUserEmail.stub(:find) { mock_boat_user_email }
      delete :destroy, :id => "1"
      response.should redirect_to(boat_user_emails_url)
    end
  end

end
