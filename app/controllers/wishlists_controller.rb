class WishlistsController < ApplicationController
  def show
    @favourite_items = current_favourite.favourite_items
  end
end
