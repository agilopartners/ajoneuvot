require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe CarUserPhonesController do

  def mock_car_user_phone(stubs={})
    @mock_car_user_phone ||= mock_model(CarUserPhone, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all car_user_phones as @car_user_phones" do
      CarUserPhone.stub(:all) { [mock_car_user_phone] }
      get :index
      assigns(:car_user_phones).should eq([mock_car_user_phone])
    end
  end

  describe "GET show" do
    it "assigns the requested car_user_phone as @car_user_phone" do
      CarUserPhone.stub(:find).with("37") { mock_car_user_phone }
      get :show, :id => "37"
      assigns(:car_user_phone).should be(mock_car_user_phone)
    end
  end

  describe "GET new" do
    it "assigns a new car_user_phone as @car_user_phone" do
      CarUserPhone.stub(:new) { mock_car_user_phone }
      get :new
      assigns(:car_user_phone).should be(mock_car_user_phone)
    end
  end

  describe "GET edit" do
    it "assigns the requested car_user_phone as @car_user_phone" do
      CarUserPhone.stub(:find).with("37") { mock_car_user_phone }
      get :edit, :id => "37"
      assigns(:car_user_phone).should be(mock_car_user_phone)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created car_user_phone as @car_user_phone" do
        CarUserPhone.stub(:new).with({'these' => 'params'}) { mock_car_user_phone(:save => true) }
        post :create, :car_user_phone => {'these' => 'params'}
        assigns(:car_user_phone).should be(mock_car_user_phone)
      end

      it "redirects to the created car_user_phone" do
        CarUserPhone.stub(:new) { mock_car_user_phone(:save => true) }
        post :create, :car_user_phone => {}
        response.should redirect_to(car_user_phone_url(mock_car_user_phone))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved car_user_phone as @car_user_phone" do
        CarUserPhone.stub(:new).with({'these' => 'params'}) { mock_car_user_phone(:save => false) }
        post :create, :car_user_phone => {'these' => 'params'}
        assigns(:car_user_phone).should be(mock_car_user_phone)
      end

      it "re-renders the 'new' template" do
        CarUserPhone.stub(:new) { mock_car_user_phone(:save => false) }
        post :create, :car_user_phone => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested car_user_phone" do
        CarUserPhone.stub(:find).with("37") { mock_car_user_phone }
        mock_car_user_phone.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :car_user_phone => {'these' => 'params'}
      end

      it "assigns the requested car_user_phone as @car_user_phone" do
        CarUserPhone.stub(:find) { mock_car_user_phone(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:car_user_phone).should be(mock_car_user_phone)
      end

      it "redirects to the car_user_phone" do
        CarUserPhone.stub(:find) { mock_car_user_phone(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(car_user_phone_url(mock_car_user_phone))
      end
    end

    describe "with invalid params" do
      it "assigns the car_user_phone as @car_user_phone" do
        CarUserPhone.stub(:find) { mock_car_user_phone(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:car_user_phone).should be(mock_car_user_phone)
      end

      it "re-renders the 'edit' template" do
        CarUserPhone.stub(:find) { mock_car_user_phone(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested car_user_phone" do
      CarUserPhone.stub(:find).with("37") { mock_car_user_phone }
      mock_car_user_phone.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the car_user_phones list" do
      CarUserPhone.stub(:find) { mock_car_user_phone }
      delete :destroy, :id => "1"
      response.should redirect_to(car_user_phones_url)
    end
  end

end
