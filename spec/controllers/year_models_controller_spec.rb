require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe YearModelsController do

  def mock_year_model(stubs={})
    @mock_year_model ||= mock_model(YearModel, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all year_models as @year_models" do
      YearModel.stub(:all) { [mock_year_model] }
      get :index
      assigns(:year_models).should eq([mock_year_model])
    end
  end

  describe "GET show" do
    it "assigns the requested year_model as @year_model" do
      YearModel.stub(:find).with("37") { mock_year_model }
      get :show, :id => "37"
      assigns(:year_model).should be(mock_year_model)
    end
  end

  describe "GET new" do
    it "assigns a new year_model as @year_model" do
      YearModel.stub(:new) { mock_year_model }
      get :new
      assigns(:year_model).should be(mock_year_model)
    end
  end

  describe "GET edit" do
    it "assigns the requested year_model as @year_model" do
      YearModel.stub(:find).with("37") { mock_year_model }
      get :edit, :id => "37"
      assigns(:year_model).should be(mock_year_model)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created year_model as @year_model" do
        YearModel.stub(:new).with({'these' => 'params'}) { mock_year_model(:save => true) }
        post :create, :year_model => {'these' => 'params'}
        assigns(:year_model).should be(mock_year_model)
      end

      it "redirects to the created year_model" do
        YearModel.stub(:new) { mock_year_model(:save => true) }
        post :create, :year_model => {}
        response.should redirect_to(year_model_url(mock_year_model))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved year_model as @year_model" do
        YearModel.stub(:new).with({'these' => 'params'}) { mock_year_model(:save => false) }
        post :create, :year_model => {'these' => 'params'}
        assigns(:year_model).should be(mock_year_model)
      end

      it "re-renders the 'new' template" do
        YearModel.stub(:new) { mock_year_model(:save => false) }
        post :create, :year_model => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested year_model" do
        YearModel.stub(:find).with("37") { mock_year_model }
        mock_year_model.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :year_model => {'these' => 'params'}
      end

      it "assigns the requested year_model as @year_model" do
        YearModel.stub(:find) { mock_year_model(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:year_model).should be(mock_year_model)
      end

      it "redirects to the year_model" do
        YearModel.stub(:find) { mock_year_model(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(year_model_url(mock_year_model))
      end
    end

    describe "with invalid params" do
      it "assigns the year_model as @year_model" do
        YearModel.stub(:find) { mock_year_model(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:year_model).should be(mock_year_model)
      end

      it "re-renders the 'edit' template" do
        YearModel.stub(:find) { mock_year_model(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested year_model" do
      YearModel.stub(:find).with("37") { mock_year_model }
      mock_year_model.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the year_models list" do
      YearModel.stub(:find) { mock_year_model }
      delete :destroy, :id => "1"
      response.should redirect_to(year_models_url)
    end
  end

end
