class StoreController < ApplicationController
  def index
    #@products = Product.all
    #
    @products = Product.order(:title)
    @time = Time.now
    
    if session[:counter].nil?
      session[:counter] = 1
    else
      session[:counter] += 1
    end
    @count = session[:counter]
    @cart = current_cart
  end
end
