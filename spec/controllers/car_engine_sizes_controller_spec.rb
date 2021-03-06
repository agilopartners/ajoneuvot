require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe CarEngineSizesController do

  def mock_car_engine_size(stubs={})
    @mock_car_engine_size ||= mock_model(CarEngineSize, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all car_engine_sizes as @car_engine_sizes" do
      CarEngineSize.stub(:all) { [mock_car_engine_size] }
      get :index
      assigns(:car_engine_sizes).should eq([mock_car_engine_size])
    end
  end

  describe "GET show" do
    it "assigns the requested car_engine_size as @car_engine_size" do
      CarEngineSize.stub(:find).with("37") { mock_car_engine_size }
      get :show, :id => "37"
      assigns(:car_engine_size).should be(mock_car_engine_size)
    end
  end

  describe "GET new" do
    it "assigns a new car_engine_size as @car_engine_size" do
      CarEngineSize.stub(:new) { mock_car_engine_size }
      get :new
      assigns(:car_engine_size).should be(mock_car_engine_size)
    end
  end

  describe "GET edit" do
    it "assigns the requested car_engine_size as @car_engine_size" do
      CarEngineSize.stub(:find).with("37") { mock_car_engine_size }
      get :edit, :id => "37"
      assigns(:car_engine_size).should be(mock_car_engine_size)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created car_engine_size as @car_engine_size" do
        CarEngineSize.stub(:new).with({'these' => 'params'}) { mock_car_engine_size(:save => true) }
        post :create, :car_engine_size => {'these' => 'params'}
        assigns(:car_engine_size).should be(mock_car_engine_size)
      end

      it "redirects to the created car_engine_size" do
        CarEngineSize.stub(:new) { mock_car_engine_size(:save => true) }
        post :create, :car_engine_size => {}
        response.should redirect_to(car_engine_size_url(mock_car_engine_size))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved car_engine_size as @car_engine_size" do
        CarEngineSize.stub(:new).with({'these' => 'params'}) { mock_car_engine_size(:save => false) }
        post :create, :car_engine_size => {'these' => 'params'}
        assigns(:car_engine_size).should be(mock_car_engine_size)
      end

      it "re-renders the 'new' template" do
        CarEngineSize.stub(:new) { mock_car_engine_size(:save => false) }
        post :create, :car_engine_size => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested car_engine_size" do
        CarEngineSize.stub(:find).with("37") { mock_car_engine_size }
        mock_car_engine_size.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :car_engine_size => {'these' => 'params'}
      end

      it "assigns the requested car_engine_size as @car_engine_size" do
        CarEngineSize.stub(:find) { mock_car_engine_size(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:car_engine_size).should be(mock_car_engine_size)
      end

      it "redirects to the car_engine_size" do
        CarEngineSize.stub(:find) { mock_car_engine_size(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(car_engine_size_url(mock_car_engine_size))
      end
    end

    describe "with invalid params" do
      it "assigns the car_engine_size as @car_engine_size" do
        CarEngineSize.stub(:find) { mock_car_engine_size(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:car_engine_size).should be(mock_car_engine_size)
      end

      it "re-renders the 'edit' template" do
        CarEngineSize.stub(:find) { mock_car_engine_size(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested car_engine_size" do
      CarEngineSize.stub(:find).with("37") { mock_car_engine_size }
      mock_car_engine_size.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the car_engine_sizes list" do
      CarEngineSize.stub(:find) { mock_car_engine_size }
      delete :destroy, :id => "1"
      response.should redirect_to(car_engine_sizes_url)
    end
  end

end
