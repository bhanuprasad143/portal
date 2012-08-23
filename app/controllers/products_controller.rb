class ProductsController < ApplicationController

	def index
		@products = Product.joins(:category)
		@products = @products.where(["categories.id = ?", params[:category]]) unless params[:category].blank?
		@products = @products.page(params[:page])
	end

	def show
		@product = Product.find(params[:id])
	end
end
