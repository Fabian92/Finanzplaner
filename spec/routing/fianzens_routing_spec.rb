require "spec_helper"

describe FianzensController do
  describe "routing" do

    it "routes to #index" do
      get("/fianzens").should route_to("fianzens#index")
    end

    it "routes to #new" do
      get("/fianzens/new").should route_to("fianzens#new")
    end

    it "routes to #show" do
      get("/fianzens/1").should route_to("fianzens#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fianzens/1/edit").should route_to("fianzens#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fianzens").should route_to("fianzens#create")
    end

    it "routes to #update" do
      put("/fianzens/1").should route_to("fianzens#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fianzens/1").should route_to("fianzens#destroy", :id => "1")
    end

  end
end
