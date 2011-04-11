require "spec_helper"

describe OProductsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/o_products" }.should route_to(:controller => "o_products", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/o_products/new" }.should route_to(:controller => "o_products", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/o_products/1" }.should route_to(:controller => "o_products", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/o_products/1/edit" }.should route_to(:controller => "o_products", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/o_products" }.should route_to(:controller => "o_products", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/o_products/1" }.should route_to(:controller => "o_products", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/o_products/1" }.should route_to(:controller => "o_products", :action => "destroy", :id => "1")
    end

  end
end
