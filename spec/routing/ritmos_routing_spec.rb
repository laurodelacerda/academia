require "spec_helper"

describe RitmosController do
  describe "routing" do

    it "routes to #index" do
      get("/ritmos").should route_to("ritmos#index")
    end

    it "routes to #new" do
      get("/ritmos/new").should route_to("ritmos#new")
    end

    it "routes to #show" do
      get("/ritmos/1").should route_to("ritmos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ritmos/1/edit").should route_to("ritmos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ritmos").should route_to("ritmos#create")
    end

    it "routes to #update" do
      put("/ritmos/1").should route_to("ritmos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ritmos/1").should route_to("ritmos#destroy", :id => "1")
    end

  end
end
