require "spec_helper"

describe TreinosController do
  describe "routing" do

    it "routes to #index" do
      get("/treinos").should route_to("treinos#index")
    end

    it "routes to #new" do
      get("/treinos/new").should route_to("treinos#new")
    end

    it "routes to #show" do
      get("/treinos/1").should route_to("treinos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/treinos/1/edit").should route_to("treinos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/treinos").should route_to("treinos#create")
    end

    it "routes to #update" do
      put("/treinos/1").should route_to("treinos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/treinos/1").should route_to("treinos#destroy", :id => "1")
    end

  end
end
