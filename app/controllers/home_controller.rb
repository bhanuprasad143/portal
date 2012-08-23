class HomeController < ApplicationController

  def index
  	@products = Product.newest(10)
  end
end
