class StoreController < ApplicationController
  def index
    @products = OProduct.find_products_for_sale
    @cart = find_cart
  end
  
  def add_to_cart
    begin
      product = OProduct.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      logger.error("Attempt to access invalid product #{params[:id]}" )
      flash[:notice] = "Invalid product"
      redirect_to :action => :index
    else
      @cart = find_cart
      @cart.add_product(product)
      redirect_to :action => :index
    end
  end
  
  def empty_cart
    session[:cart] = nil
    flash[:notice] = "Your cart is currently empty"
    redirect_to :action => :index
  end

  
private  

  def find_cart
    session[:cart] ||= Cart.new
  end

end
