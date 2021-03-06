require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe MachineMakeSectionsController do

  def mock_machine_make_section(stubs={})
    @mock_machine_make_section ||= mock_model(MachineMakeSection, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all machine_make_sections as @machine_make_sections" do
      MachineMakeSection.stub(:all) { [mock_machine_make_section] }
      get :index
      assigns(:machine_make_sections).should eq([mock_machine_make_section])
    end
  end

  describe "GET show" do
    it "assigns the requested machine_make_section as @machine_make_section" do
      MachineMakeSection.stub(:find).with("37") { mock_machine_make_section }
      get :show, :id => "37"
      assigns(:machine_make_section).should be(mock_machine_make_section)
    end
  end

  describe "GET new" do
    it "assigns a new machine_make_section as @machine_make_section" do
      MachineMakeSection.stub(:new) { mock_machine_make_section }
      get :new
      assigns(:machine_make_section).should be(mock_machine_make_section)
    end
  end

  describe "GET edit" do
    it "assigns the requested machine_make_section as @machine_make_section" do
      MachineMakeSection.stub(:find).with("37") { mock_machine_make_section }
      get :edit, :id => "37"
      assigns(:machine_make_section).should be(mock_machine_make_section)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created machine_make_section as @machine_make_section" do
        MachineMakeSection.stub(:new).with({'these' => 'params'}) { mock_machine_make_section(:save => true) }
        post :create, :machine_make_section => {'these' => 'params'}
        assigns(:machine_make_section).should be(mock_machine_make_section)
      end

      it "redirects to the created machine_make_section" do
        MachineMakeSection.stub(:new) { mock_machine_make_section(:save => true) }
        post :create, :machine_make_section => {}
        response.should redirect_to(machine_make_section_url(mock_machine_make_section))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved machine_make_section as @machine_make_section" do
        MachineMakeSection.stub(:new).with({'these' => 'params'}) { mock_machine_make_section(:save => false) }
        post :create, :machine_make_section => {'these' => 'params'}
        assigns(:machine_make_section).should be(mock_machine_make_section)
      end

      it "re-renders the 'new' template" do
        MachineMakeSection.stub(:new) { mock_machine_make_section(:save => false) }
        post :create, :machine_make_section => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested machine_make_section" do
        MachineMakeSection.stub(:find).with("37") { mock_machine_make_section }
        mock_machine_make_section.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :machine_make_section => {'these' => 'params'}
      end

      it "assigns the requested machine_make_section as @machine_make_section" do
        MachineMakeSection.stub(:find) { mock_machine_make_section(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:machine_make_section).should be(mock_machine_make_section)
      end

      it "redirects to the machine_make_section" do
        MachineMakeSection.stub(:find) { mock_machine_make_section(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(machine_make_section_url(mock_machine_make_section))
      end
    end

    describe "with invalid params" do
      it "assigns the machine_make_section as @machine_make_section" do
        MachineMakeSection.stub(:find) { mock_machine_make_section(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:machine_make_section).should be(mock_machine_make_section)
      end

      it "re-renders the 'edit' template" do
        MachineMakeSection.stub(:find) { mock_machine_make_section(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested machine_make_section" do
      MachineMakeSection.stub(:find).with("37") { mock_machine_make_section }
      mock_machine_make_section.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the machine_make_sections list" do
      MachineMakeSection.stub(:find) { mock_machine_make_section }
      delete :destroy, :id => "1"
      response.should redirect_to(machine_make_sections_url)
    end
  end

end
