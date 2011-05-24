require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe CaravanAskingPricesController do

  def mock_caravan_asking_price(stubs={})
    @mock_caravan_asking_price ||= mock_model(CaravanAskingPrice, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all caravan_asking_prices as @caravan_asking_prices" do
      CaravanAskingPrice.stub(:all) { [mock_caravan_asking_price] }
      get :index
      assigns(:caravan_asking_prices).should eq([mock_caravan_asking_price])
    end
  end

  describe "GET show" do
    it "assigns the requested caravan_asking_price as @caravan_asking_price" do
      CaravanAskingPrice.stub(:find).with("37") { mock_caravan_asking_price }
      get :show, :id => "37"
      assigns(:caravan_asking_price).should be(mock_caravan_asking_price)
    end
  end

  describe "GET new" do
    it "assigns a new caravan_asking_price as @caravan_asking_price" do
      CaravanAskingPrice.stub(:new) { mock_caravan_asking_price }
      get :new
      assigns(:caravan_asking_price).should be(mock_caravan_asking_price)
    end
  end

  describe "GET edit" do
    it "assigns the requested caravan_asking_price as @caravan_asking_price" do
      CaravanAskingPrice.stub(:find).with("37") { mock_caravan_asking_price }
      get :edit, :id => "37"
      assigns(:caravan_asking_price).should be(mock_caravan_asking_price)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created caravan_asking_price as @caravan_asking_price" do
        CaravanAskingPrice.stub(:new).with({'these' => 'params'}) { mock_caravan_asking_price(:save => true) }
        post :create, :caravan_asking_price => {'these' => 'params'}
        assigns(:caravan_asking_price).should be(mock_caravan_asking_price)
      end

      it "redirects to the created caravan_asking_price" do
        CaravanAskingPrice.stub(:new) { mock_caravan_asking_price(:save => true) }
        post :create, :caravan_asking_price => {}
        response.should redirect_to(caravan_asking_price_url(mock_caravan_asking_price))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved caravan_asking_price as @caravan_asking_price" do
        CaravanAskingPrice.stub(:new).with({'these' => 'params'}) { mock_caravan_asking_price(:save => false) }
        post :create, :caravan_asking_price => {'these' => 'params'}
        assigns(:caravan_asking_price).should be(mock_caravan_asking_price)
      end

      it "re-renders the 'new' template" do
        CaravanAskingPrice.stub(:new) { mock_caravan_asking_price(:save => false) }
        post :create, :caravan_asking_price => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested caravan_asking_price" do
        CaravanAskingPrice.stub(:find).with("37") { mock_caravan_asking_price }
        mock_caravan_asking_price.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :caravan_asking_price => {'these' => 'params'}
      end

      it "assigns the requested caravan_asking_price as @caravan_asking_price" do
        CaravanAskingPrice.stub(:find) { mock_caravan_asking_price(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:caravan_asking_price).should be(mock_caravan_asking_price)
      end

      it "redirects to the caravan_asking_price" do
        CaravanAskingPrice.stub(:find) { mock_caravan_asking_price(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(caravan_asking_price_url(mock_caravan_asking_price))
      end
    end

    describe "with invalid params" do
      it "assigns the caravan_asking_price as @caravan_asking_price" do
        CaravanAskingPrice.stub(:find) { mock_caravan_asking_price(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:caravan_asking_price).should be(mock_caravan_asking_price)
      end

      it "re-renders the 'edit' template" do
        CaravanAskingPrice.stub(:find) { mock_caravan_asking_price(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested caravan_asking_price" do
      CaravanAskingPrice.stub(:find).with("37") { mock_caravan_asking_price }
      mock_caravan_asking_price.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the caravan_asking_prices list" do
      CaravanAskingPrice.stub(:find) { mock_caravan_asking_price }
      delete :destroy, :id => "1"
      response.should redirect_to(caravan_asking_prices_url)
    end
  end

end
