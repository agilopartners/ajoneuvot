require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe CarModelSectionsController do

  def mock_car_model_section(stubs={})
    @mock_car_model_section ||= mock_model(CarModelSection, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all car_model_sections as @car_model_sections" do
      CarModelSection.stub(:all) { [mock_car_model_section] }
      get :index
      assigns(:car_model_sections).should eq([mock_car_model_section])
    end
  end

  describe "GET show" do
    it "assigns the requested car_model_section as @car_model_section" do
      CarModelSection.stub(:find).with("37") { mock_car_model_section }
      get :show, :id => "37"
      assigns(:car_model_section).should be(mock_car_model_section)
    end
  end

  describe "GET new" do
    it "assigns a new car_model_section as @car_model_section" do
      CarModelSection.stub(:new) { mock_car_model_section }
      get :new
      assigns(:car_model_section).should be(mock_car_model_section)
    end
  end

  describe "GET edit" do
    it "assigns the requested car_model_section as @car_model_section" do
      CarModelSection.stub(:find).with("37") { mock_car_model_section }
      get :edit, :id => "37"
      assigns(:car_model_section).should be(mock_car_model_section)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created car_model_section as @car_model_section" do
        CarModelSection.stub(:new).with({'these' => 'params'}) { mock_car_model_section(:save => true) }
        post :create, :car_model_section => {'these' => 'params'}
        assigns(:car_model_section).should be(mock_car_model_section)
      end

      it "redirects to the created car_model_section" do
        CarModelSection.stub(:new) { mock_car_model_section(:save => true) }
        post :create, :car_model_section => {}
        response.should redirect_to(car_model_section_url(mock_car_model_section))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved car_model_section as @car_model_section" do
        CarModelSection.stub(:new).with({'these' => 'params'}) { mock_car_model_section(:save => false) }
        post :create, :car_model_section => {'these' => 'params'}
        assigns(:car_model_section).should be(mock_car_model_section)
      end

      it "re-renders the 'new' template" do
        CarModelSection.stub(:new) { mock_car_model_section(:save => false) }
        post :create, :car_model_section => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested car_model_section" do
        CarModelSection.stub(:find).with("37") { mock_car_model_section }
        mock_car_model_section.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :car_model_section => {'these' => 'params'}
      end

      it "assigns the requested car_model_section as @car_model_section" do
        CarModelSection.stub(:find) { mock_car_model_section(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:car_model_section).should be(mock_car_model_section)
      end

      it "redirects to the car_model_section" do
        CarModelSection.stub(:find) { mock_car_model_section(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(car_model_section_url(mock_car_model_section))
      end
    end

    describe "with invalid params" do
      it "assigns the car_model_section as @car_model_section" do
        CarModelSection.stub(:find) { mock_car_model_section(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:car_model_section).should be(mock_car_model_section)
      end

      it "re-renders the 'edit' template" do
        CarModelSection.stub(:find) { mock_car_model_section(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested car_model_section" do
      CarModelSection.stub(:find).with("37") { mock_car_model_section }
      mock_car_model_section.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the car_model_sections list" do
      CarModelSection.stub(:find) { mock_car_model_section }
      delete :destroy, :id => "1"
      response.should redirect_to(car_model_sections_url)
    end
  end

end