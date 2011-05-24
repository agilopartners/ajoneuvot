require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe MachineCategorySectionsController do

  def mock_machine_category_section(stubs={})
    @mock_machine_category_section ||= mock_model(MachineCategorySection, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all machine_category_sections as @machine_category_sections" do
      MachineCategorySection.stub(:all) { [mock_machine_category_section] }
      get :index
      assigns(:machine_category_sections).should eq([mock_machine_category_section])
    end
  end

  describe "GET show" do
    it "assigns the requested machine_category_section as @machine_category_section" do
      MachineCategorySection.stub(:find).with("37") { mock_machine_category_section }
      get :show, :id => "37"
      assigns(:machine_category_section).should be(mock_machine_category_section)
    end
  end

  describe "GET new" do
    it "assigns a new machine_category_section as @machine_category_section" do
      MachineCategorySection.stub(:new) { mock_machine_category_section }
      get :new
      assigns(:machine_category_section).should be(mock_machine_category_section)
    end
  end

  describe "GET edit" do
    it "assigns the requested machine_category_section as @machine_category_section" do
      MachineCategorySection.stub(:find).with("37") { mock_machine_category_section }
      get :edit, :id => "37"
      assigns(:machine_category_section).should be(mock_machine_category_section)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created machine_category_section as @machine_category_section" do
        MachineCategorySection.stub(:new).with({'these' => 'params'}) { mock_machine_category_section(:save => true) }
        post :create, :machine_category_section => {'these' => 'params'}
        assigns(:machine_category_section).should be(mock_machine_category_section)
      end

      it "redirects to the created machine_category_section" do
        MachineCategorySection.stub(:new) { mock_machine_category_section(:save => true) }
        post :create, :machine_category_section => {}
        response.should redirect_to(machine_category_section_url(mock_machine_category_section))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved machine_category_section as @machine_category_section" do
        MachineCategorySection.stub(:new).with({'these' => 'params'}) { mock_machine_category_section(:save => false) }
        post :create, :machine_category_section => {'these' => 'params'}
        assigns(:machine_category_section).should be(mock_machine_category_section)
      end

      it "re-renders the 'new' template" do
        MachineCategorySection.stub(:new) { mock_machine_category_section(:save => false) }
        post :create, :machine_category_section => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested machine_category_section" do
        MachineCategorySection.stub(:find).with("37") { mock_machine_category_section }
        mock_machine_category_section.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :machine_category_section => {'these' => 'params'}
      end

      it "assigns the requested machine_category_section as @machine_category_section" do
        MachineCategorySection.stub(:find) { mock_machine_category_section(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:machine_category_section).should be(mock_machine_category_section)
      end

      it "redirects to the machine_category_section" do
        MachineCategorySection.stub(:find) { mock_machine_category_section(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(machine_category_section_url(mock_machine_category_section))
      end
    end

    describe "with invalid params" do
      it "assigns the machine_category_section as @machine_category_section" do
        MachineCategorySection.stub(:find) { mock_machine_category_section(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:machine_category_section).should be(mock_machine_category_section)
      end

      it "re-renders the 'edit' template" do
        MachineCategorySection.stub(:find) { mock_machine_category_section(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested machine_category_section" do
      MachineCategorySection.stub(:find).with("37") { mock_machine_category_section }
      mock_machine_category_section.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the machine_category_sections list" do
      MachineCategorySection.stub(:find) { mock_machine_category_section }
      delete :destroy, :id => "1"
      response.should redirect_to(machine_category_sections_url)
    end
  end

end