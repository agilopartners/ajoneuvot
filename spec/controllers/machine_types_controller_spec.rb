require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe MachineTypesController do

  def mock_machine_type(stubs={})
    @mock_machine_type ||= mock_model(MachineType, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all machine_types as @machine_types" do
      MachineType.stub(:all) { [mock_machine_type] }
      get :index
      assigns(:machine_types).should eq([mock_machine_type])
    end
  end

  describe "GET show" do
    it "assigns the requested machine_type as @machine_type" do
      MachineType.stub(:find).with("37") { mock_machine_type }
      get :show, :id => "37"
      assigns(:machine_type).should be(mock_machine_type)
    end
  end

  describe "GET new" do
    it "assigns a new machine_type as @machine_type" do
      MachineType.stub(:new) { mock_machine_type }
      get :new
      assigns(:machine_type).should be(mock_machine_type)
    end
  end

  describe "GET edit" do
    it "assigns the requested machine_type as @machine_type" do
      MachineType.stub(:find).with("37") { mock_machine_type }
      get :edit, :id => "37"
      assigns(:machine_type).should be(mock_machine_type)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created machine_type as @machine_type" do
        MachineType.stub(:new).with({'these' => 'params'}) { mock_machine_type(:save => true) }
        post :create, :machine_type => {'these' => 'params'}
        assigns(:machine_type).should be(mock_machine_type)
      end

      it "redirects to the created machine_type" do
        MachineType.stub(:new) { mock_machine_type(:save => true) }
        post :create, :machine_type => {}
        response.should redirect_to(machine_type_url(mock_machine_type))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved machine_type as @machine_type" do
        MachineType.stub(:new).with({'these' => 'params'}) { mock_machine_type(:save => false) }
        post :create, :machine_type => {'these' => 'params'}
        assigns(:machine_type).should be(mock_machine_type)
      end

      it "re-renders the 'new' template" do
        MachineType.stub(:new) { mock_machine_type(:save => false) }
        post :create, :machine_type => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested machine_type" do
        MachineType.stub(:find).with("37") { mock_machine_type }
        mock_machine_type.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :machine_type => {'these' => 'params'}
      end

      it "assigns the requested machine_type as @machine_type" do
        MachineType.stub(:find) { mock_machine_type(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:machine_type).should be(mock_machine_type)
      end

      it "redirects to the machine_type" do
        MachineType.stub(:find) { mock_machine_type(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(machine_type_url(mock_machine_type))
      end
    end

    describe "with invalid params" do
      it "assigns the machine_type as @machine_type" do
        MachineType.stub(:find) { mock_machine_type(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:machine_type).should be(mock_machine_type)
      end

      it "re-renders the 'edit' template" do
        MachineType.stub(:find) { mock_machine_type(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested machine_type" do
      MachineType.stub(:find).with("37") { mock_machine_type }
      mock_machine_type.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the machine_types list" do
      MachineType.stub(:find) { mock_machine_type }
      delete :destroy, :id => "1"
      response.should redirect_to(machine_types_url)
    end
  end

end
