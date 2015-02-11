class ProductsController < ApplicationController

  before_filter :authenticate_user!, :except => :index

  def index
    @products = Product.all
  end

  def create
    @product = Product.create!(params[:product])
  end
end
