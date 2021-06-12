class ShopsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @products = Product.search(params[:search])
    @order_item = current_order.order_items.new
    @favourite_item = current_favourite.favourite_items.new
  end

  def show
    @product = Product.find(params[:id])
  end
end
