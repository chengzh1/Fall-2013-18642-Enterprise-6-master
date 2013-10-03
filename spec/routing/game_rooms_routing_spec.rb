require "spec_helper"

describe GameRoomsController do
  describe "routing" do

    it "routes to #index" do
      get("/game_rooms").should route_to("game_rooms#index")
    end

    it "routes to #new" do
      get("/game_rooms/new").should route_to("game_rooms#new")
    end

    it "routes to #show" do
      get("/game_rooms/1").should route_to("game_rooms#show", :id => "1")
    end

    it "routes to #edit" do
      get("/game_rooms/1/edit").should route_to("game_rooms#edit", :id => "1")
    end

    it "routes to #create" do
      post("/game_rooms").should route_to("game_rooms#create")
    end

    it "routes to #update" do
      put("/game_rooms/1").should route_to("game_rooms#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/game_rooms/1").should route_to("game_rooms#destroy", :id => "1")
    end

  end
end
