require "rails_helper"

RSpec.describe PoisController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pois").to route_to("pois#index")
    end

    it "routes to #new" do
      expect(:get => "/pois/new").to route_to("pois#new")
    end

    it "routes to #show" do
      expect(:get => "/pois/1").to route_to("pois#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pois/1/edit").to route_to("pois#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pois").to route_to("pois#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/pois/1").to route_to("pois#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/pois/1").to route_to("pois#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pois/1").to route_to("pois#destroy", :id => "1")
    end

  end
end
