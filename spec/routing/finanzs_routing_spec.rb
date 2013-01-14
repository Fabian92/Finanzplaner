require "spec_helper"

describe FinanzsController do
  describe "routing" do

    it "routes to #index" do
      get("/finanzs").should route_to("finanzs#index")
    end

    it "routes to #new" do
      get("/finanzs/new").should route_to("finanzs#new")
    end

    it "routes to #show" do
      get("/finanzs/1").should route_to("finanzs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/finanzs/1/edit").should route_to("finanzs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/finanzs").should route_to("finanzs#create")
    end

    it "routes to #update" do
      put("/finanzs/1").should route_to("finanzs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/finanzs/1").should route_to("finanzs#destroy", :id => "1")
    end

  end
end
