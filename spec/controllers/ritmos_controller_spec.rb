require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe RitmosController do

  # This should return the minimal set of attributes required to create a valid
  # Ritmo. As you add validations to Ritmo, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "quantidade" => "1" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RitmosController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all ritmos as @ritmos" do
      ritmo = Ritmo.create! valid_attributes
      get :index, {}, valid_session
      assigns(:ritmos).should eq([ritmo])
    end
  end

  describe "GET show" do
    it "assigns the requested ritmo as @ritmo" do
      ritmo = Ritmo.create! valid_attributes
      get :show, {:id => ritmo.to_param}, valid_session
      assigns(:ritmo).should eq(ritmo)
    end
  end

  describe "GET new" do
    it "assigns a new ritmo as @ritmo" do
      get :new, {}, valid_session
      assigns(:ritmo).should be_a_new(Ritmo)
    end
  end

  describe "GET edit" do
    it "assigns the requested ritmo as @ritmo" do
      ritmo = Ritmo.create! valid_attributes
      get :edit, {:id => ritmo.to_param}, valid_session
      assigns(:ritmo).should eq(ritmo)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Ritmo" do
        expect {
          post :create, {:ritmo => valid_attributes}, valid_session
        }.to change(Ritmo, :count).by(1)
      end

      it "assigns a newly created ritmo as @ritmo" do
        post :create, {:ritmo => valid_attributes}, valid_session
        assigns(:ritmo).should be_a(Ritmo)
        assigns(:ritmo).should be_persisted
      end

      it "redirects to the created ritmo" do
        post :create, {:ritmo => valid_attributes}, valid_session
        response.should redirect_to(Ritmo.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved ritmo as @ritmo" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ritmo.any_instance.stub(:save).and_return(false)
        post :create, {:ritmo => { "quantidade" => "invalid value" }}, valid_session
        assigns(:ritmo).should be_a_new(Ritmo)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ritmo.any_instance.stub(:save).and_return(false)
        post :create, {:ritmo => { "quantidade" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested ritmo" do
        ritmo = Ritmo.create! valid_attributes
        # Assuming there are no other ritmos in the database, this
        # specifies that the Ritmo created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Ritmo.any_instance.should_receive(:update_attributes).with({ "quantidade" => "1" })
        put :update, {:id => ritmo.to_param, :ritmo => { "quantidade" => "1" }}, valid_session
      end

      it "assigns the requested ritmo as @ritmo" do
        ritmo = Ritmo.create! valid_attributes
        put :update, {:id => ritmo.to_param, :ritmo => valid_attributes}, valid_session
        assigns(:ritmo).should eq(ritmo)
      end

      it "redirects to the ritmo" do
        ritmo = Ritmo.create! valid_attributes
        put :update, {:id => ritmo.to_param, :ritmo => valid_attributes}, valid_session
        response.should redirect_to(ritmo)
      end
    end

    describe "with invalid params" do
      it "assigns the ritmo as @ritmo" do
        ritmo = Ritmo.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ritmo.any_instance.stub(:save).and_return(false)
        put :update, {:id => ritmo.to_param, :ritmo => { "quantidade" => "invalid value" }}, valid_session
        assigns(:ritmo).should eq(ritmo)
      end

      it "re-renders the 'edit' template" do
        ritmo = Ritmo.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ritmo.any_instance.stub(:save).and_return(false)
        put :update, {:id => ritmo.to_param, :ritmo => { "quantidade" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested ritmo" do
      ritmo = Ritmo.create! valid_attributes
      expect {
        delete :destroy, {:id => ritmo.to_param}, valid_session
      }.to change(Ritmo, :count).by(-1)
    end

    it "redirects to the ritmos list" do
      ritmo = Ritmo.create! valid_attributes
      delete :destroy, {:id => ritmo.to_param}, valid_session
      response.should redirect_to(ritmos_url)
    end
  end

end