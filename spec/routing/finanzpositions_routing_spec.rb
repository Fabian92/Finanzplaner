require "spec_helper"

describe FinanzpositionsController do
  describe "routing" do

    it "routes to #index" do
      get("/finanzpositions").should route_to("finanzpositions#index")
    end

    it "routes to #new" do
      get("/finanzpositions/new").should route_to("finanzpositions#new")
    end

    it "routes to #show" do
      get("/finanzpositions/1").should route_to("finanzpositions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/finanzpositions/1/edit").should route_to("finanzpositions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/finanzpositions").should route_to("finanzpositions#create")
    end

    it "routes to #update" do
      put("/finanzpositions/1").should route_to("finanzpositions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/finanzpositions/1").should route_to("finanzpositions#destroy", :id => "1")
    end

  end
end
