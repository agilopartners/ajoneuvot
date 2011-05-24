require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe MotoRegistrationNumbersController do

  def mock_moto_registration_number(stubs={})
    @mock_moto_registration_number ||= mock_model(MotoRegistrationNumber, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all moto_registration_numbers as @moto_registration_numbers" do
      MotoRegistrationNumber.stub(:all) { [mock_moto_registration_number] }
      get :index
      assigns(:moto_registration_numbers).should eq([mock_moto_registration_number])
    end
  end

  describe "GET show" do
    it "assigns the requested moto_registration_number as @moto_registration_number" do
      MotoRegistrationNumber.stub(:find).with("37") { mock_moto_registration_number }
      get :show, :id => "37"
      assigns(:moto_registration_number).should be(mock_moto_registration_number)
    end
  end

  describe "GET new" do
    it "assigns a new moto_registration_number as @moto_registration_number" do
      MotoRegistrationNumber.stub(:new) { mock_moto_registration_number }
      get :new
      assigns(:moto_registration_number).should be(mock_moto_registration_number)
    end
  end

  describe "GET edit" do
    it "assigns the requested moto_registration_number as @moto_registration_number" do
      MotoRegistrationNumber.stub(:find).with("37") { mock_moto_registration_number }
      get :edit, :id => "37"
      assigns(:moto_registration_number).should be(mock_moto_registration_number)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created moto_registration_number as @moto_registration_number" do
        MotoRegistrationNumber.stub(:new).with({'these' => 'params'}) { mock_moto_registration_number(:save => true) }
        post :create, :moto_registration_number => {'these' => 'params'}
        assigns(:moto_registration_number).should be(mock_moto_registration_number)
      end

      it "redirects to the created moto_registration_number" do
        MotoRegistrationNumber.stub(:new) { mock_moto_registration_number(:save => true) }
        post :create, :moto_registration_number => {}
        response.should redirect_to(moto_registration_number_url(mock_moto_registration_number))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved moto_registration_number as @moto_registration_number" do
        MotoRegistrationNumber.stub(:new).with({'these' => 'params'}) { mock_moto_registration_number(:save => false) }
        post :create, :moto_registration_number => {'these' => 'params'}
        assigns(:moto_registration_number).should be(mock_moto_registration_number)
      end

      it "re-renders the 'new' template" do
        MotoRegistrationNumber.stub(:new) { mock_moto_registration_number(:save => false) }
        post :create, :moto_registration_number => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested moto_registration_number" do
        MotoRegistrationNumber.stub(:find).with("37") { mock_moto_registration_number }
        mock_moto_registration_number.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :moto_registration_number => {'these' => 'params'}
      end

      it "assigns the requested moto_registration_number as @moto_registration_number" do
        MotoRegistrationNumber.stub(:find) { mock_moto_registration_number(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:moto_registration_number).should be(mock_moto_registration_number)
      end

      it "redirects to the moto_registration_number" do
        MotoRegistrationNumber.stub(:find) { mock_moto_registration_number(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(moto_registration_number_url(mock_moto_registration_number))
      end
    end

    describe "with invalid params" do
      it "assigns the moto_registration_number as @moto_registration_number" do
        MotoRegistrationNumber.stub(:find) { mock_moto_registration_number(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:moto_registration_number).should be(mock_moto_registration_number)
      end

      it "re-renders the 'edit' template" do
        MotoRegistrationNumber.stub(:find) { mock_moto_registration_number(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested moto_registration_number" do
      MotoRegistrationNumber.stub(:find).with("37") { mock_moto_registration_number }
      mock_moto_registration_number.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the moto_registration_numbers list" do
      MotoRegistrationNumber.stub(:find) { mock_moto_registration_number }
      delete :destroy, :id => "1"
      response.should redirect_to(moto_registration_numbers_url)
    end
  end

end
