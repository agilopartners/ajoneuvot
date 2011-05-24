require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe TypeSectionsController do

  def mock_type_section(stubs={})
    @mock_type_section ||= mock_model(TypeSection, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all type_sections as @type_sections" do
      TypeSection.stub(:all) { [mock_type_section] }
      get :index
      assigns(:type_sections).should eq([mock_type_section])
    end
  end

  describe "GET show" do
    it "assigns the requested type_section as @type_section" do
      TypeSection.stub(:find).with("37") { mock_type_section }
      get :show, :id => "37"
      assigns(:type_section).should be(mock_type_section)
    end
  end

  describe "GET new" do
    it "assigns a new type_section as @type_section" do
      TypeSection.stub(:new) { mock_type_section }
      get :new
      assigns(:type_section).should be(mock_type_section)
    end
  end

  describe "GET edit" do
    it "assigns the requested type_section as @type_section" do
      TypeSection.stub(:find).with("37") { mock_type_section }
      get :edit, :id => "37"
      assigns(:type_section).should be(mock_type_section)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created type_section as @type_section" do
        TypeSection.stub(:new).with({'these' => 'params'}) { mock_type_section(:save => true) }
        post :create, :type_section => {'these' => 'params'}
        assigns(:type_section).should be(mock_type_section)
      end

      it "redirects to the created type_section" do
        TypeSection.stub(:new) { mock_type_section(:save => true) }
        post :create, :type_section => {}
        response.should redirect_to(type_section_url(mock_type_section))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved type_section as @type_section" do
        TypeSection.stub(:new).with({'these' => 'params'}) { mock_type_section(:save => false) }
        post :create, :type_section => {'these' => 'params'}
        assigns(:type_section).should be(mock_type_section)
      end

      it "re-renders the 'new' template" do
        TypeSection.stub(:new) { mock_type_section(:save => false) }
        post :create, :type_section => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested type_section" do
        TypeSection.stub(:find).with("37") { mock_type_section }
        mock_type_section.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :type_section => {'these' => 'params'}
      end

      it "assigns the requested type_section as @type_section" do
        TypeSection.stub(:find) { mock_type_section(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:type_section).should be(mock_type_section)
      end

      it "redirects to the type_section" do
        TypeSection.stub(:find) { mock_type_section(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(type_section_url(mock_type_section))
      end
    end

    describe "with invalid params" do
      it "assigns the type_section as @type_section" do
        TypeSection.stub(:find) { mock_type_section(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:type_section).should be(mock_type_section)
      end

      it "re-renders the 'edit' template" do
        TypeSection.stub(:find) { mock_type_section(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested type_section" do
      TypeSection.stub(:find).with("37") { mock_type_section }
      mock_type_section.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the type_sections list" do
      TypeSection.stub(:find) { mock_type_section }
      delete :destroy, :id => "1"
      response.should redirect_to(type_sections_url)
    end
  end

end
