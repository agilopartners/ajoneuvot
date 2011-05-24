require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe MotoMakeSectionsController do

  def mock_moto_make_section(stubs={})
    @mock_moto_make_section ||= mock_model(MotoMakeSection, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all moto_make_sections as @moto_make_sections" do
      MotoMakeSection.stub(:all) { [mock_moto_make_section] }
      get :index
      assigns(:moto_make_sections).should eq([mock_moto_make_section])
    end
  end

  describe "GET show" do
    it "assigns the requested moto_make_section as @moto_make_section" do
      MotoMakeSection.stub(:find).with("37") { mock_moto_make_section }
      get :show, :id => "37"
      assigns(:moto_make_section).should be(mock_moto_make_section)
    end
  end

  describe "GET new" do
    it "assigns a new moto_make_section as @moto_make_section" do
      MotoMakeSection.stub(:new) { mock_moto_make_section }
      get :new
      assigns(:moto_make_section).should be(mock_moto_make_section)
    end
  end

  describe "GET edit" do
    it "assigns the requested moto_make_section as @moto_make_section" do
      MotoMakeSection.stub(:find).with("37") { mock_moto_make_section }
      get :edit, :id => "37"
      assigns(:moto_make_section).should be(mock_moto_make_section)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created moto_make_section as @moto_make_section" do
        MotoMakeSection.stub(:new).with({'these' => 'params'}) { mock_moto_make_section(:save => true) }
        post :create, :moto_make_section => {'these' => 'params'}
        assigns(:moto_make_section).should be(mock_moto_make_section)
      end

      it "redirects to the created moto_make_section" do
        MotoMakeSection.stub(:new) { mock_moto_make_section(:save => true) }
        post :create, :moto_make_section => {}
        response.should redirect_to(moto_make_section_url(mock_moto_make_section))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved moto_make_section as @moto_make_section" do
        MotoMakeSection.stub(:new).with({'these' => 'params'}) { mock_moto_make_section(:save => false) }
        post :create, :moto_make_section => {'these' => 'params'}
        assigns(:moto_make_section).should be(mock_moto_make_section)
      end

      it "re-renders the 'new' template" do
        MotoMakeSection.stub(:new) { mock_moto_make_section(:save => false) }
        post :create, :moto_make_section => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested moto_make_section" do
        MotoMakeSection.stub(:find).with("37") { mock_moto_make_section }
        mock_moto_make_section.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :moto_make_section => {'these' => 'params'}
      end

      it "assigns the requested moto_make_section as @moto_make_section" do
        MotoMakeSection.stub(:find) { mock_moto_make_section(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:moto_make_section).should be(mock_moto_make_section)
      end

      it "redirects to the moto_make_section" do
        MotoMakeSection.stub(:find) { mock_moto_make_section(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(moto_make_section_url(mock_moto_make_section))
      end
    end

    describe "with invalid params" do
      it "assigns the moto_make_section as @moto_make_section" do
        MotoMakeSection.stub(:find) { mock_moto_make_section(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:moto_make_section).should be(mock_moto_make_section)
      end

      it "re-renders the 'edit' template" do
        MotoMakeSection.stub(:find) { mock_moto_make_section(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested moto_make_section" do
      MotoMakeSection.stub(:find).with("37") { mock_moto_make_section }
      mock_moto_make_section.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the moto_make_sections list" do
      MotoMakeSection.stub(:find) { mock_moto_make_section }
      delete :destroy, :id => "1"
      response.should redirect_to(moto_make_sections_url)
    end
  end

end
