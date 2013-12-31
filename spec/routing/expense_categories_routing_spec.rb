require "spec_helper"

describe ExpenseCategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/expense_categories").should route_to("expense_categories#index")
    end

    it "routes to #new" do
      get("/expense_categories/new").should route_to("expense_categories#new")
    end

    it "routes to #show" do
      get("/expense_categories/1").should route_to("expense_categories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/expense_categories/1/edit").should route_to("expense_categories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/expense_categories").should route_to("expense_categories#create")
    end

    it "routes to #update" do
      put("/expense_categories/1").should route_to("expense_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/expense_categories/1").should route_to("expense_categories#destroy", :id => "1")
    end

  end
end
