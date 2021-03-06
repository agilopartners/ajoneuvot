require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe MenusController do

  def mock_menu(stubs={})
    @mock_menu ||= mock_model(Menu, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all menus as @menus" do
      Menu.stub(:all) { [mock_menu] }
      get :index
      assigns(:menus).should eq([mock_menu])
    end
  end

  describe "GET show" do
    it "assigns the requested menu as @menu" do
      Menu.stub(:find).with("37") { mock_menu }
      get :show, :id => "37"
      assigns(:menu).should be(mock_menu)
    end
  end

  describe "GET new" do
    it "assigns a new menu as @menu" do
      Menu.stub(:new) { mock_menu }
      get :new
      assigns(:menu).should be(mock_menu)
    end
  end

  describe "GET edit" do
    it "assigns the requested menu as @menu" do
      Menu.stub(:find).with("37") { mock_menu }
      get :edit, :id => "37"
      assigns(:menu).should be(mock_menu)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created menu as @menu" do
        Menu.stub(:new).with({'these' => 'params'}) { mock_menu(:save => true) }
        post :create, :menu => {'these' => 'params'}
        assigns(:menu).should be(mock_menu)
      end

      it "redirects to the created menu" do
        Menu.stub(:new) { mock_menu(:save => true) }
        post :create, :menu => {}
        response.should redirect_to(menu_url(mock_menu))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved menu as @menu" do
        Menu.stub(:new).with({'these' => 'params'}) { mock_menu(:save => false) }
        post :create, :menu => {'these' => 'params'}
        assigns(:menu).should be(mock_menu)
      end

      it "re-renders the 'new' template" do
        Menu.stub(:new) { mock_menu(:save => false) }
        post :create, :menu => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested menu" do
        Menu.stub(:find).with("37") { mock_menu }
        mock_menu.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :menu => {'these' => 'params'}
      end

      it "assigns the requested menu as @menu" do
        Menu.stub(:find) { mock_menu(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:menu).should be(mock_menu)
      end

      it "redirects to the menu" do
        Menu.stub(:find) { mock_menu(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(menu_url(mock_menu))
      end
    end

    describe "with invalid params" do
      it "assigns the menu as @menu" do
        Menu.stub(:find) { mock_menu(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:menu).should be(mock_menu)
      end

      it "re-renders the 'edit' template" do
        Menu.stub(:find) { mock_menu(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested menu" do
      Menu.stub(:find).with("37") { mock_menu }
      mock_menu.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the menus list" do
      Menu.stub(:find) { mock_menu }
      delete :destroy, :id => "1"
      response.should redirect_to(menus_url)
    end
  end

end
