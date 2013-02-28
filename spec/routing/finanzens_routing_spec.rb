require "spec_helper"

describe FinanzensController do
  describe "routing" do

    it "routes to #index" do
      get("/finanzens").should route_to("finanzens#index")
    end

    it "routes to #new" do
      get("/finanzens/new").should route_to("finanzens#new")
    end

    it "routes to #show" do
      get("/finanzens/1").should route_to("finanzens#show", :id => "1")
    end

    it "routes to #edit" do
      get("/finanzens/1/edit").should route_to("finanzens#edit", :id => "1")
    end

    it "routes to #create" do
      post("/finanzens").should route_to("finanzens#create")
    end

    it "routes to #update" do
      put("/finanzens/1").should route_to("finanzens#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/finanzens/1").should route_to("finanzens#destroy", :id => "1")
    end

  end
end
