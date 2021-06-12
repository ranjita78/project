class FavouriteItemsController < ApplicationController

    def create 
        @favourite = current_favourite 
        @favourite_item = @favourite.favourite_items.new(favourite_params)
        @favourite.save 
        session[:favourite_id] = @favourite.id 
     end


     def destroy 
        @favourite = current_favourite
        @favourite_item = @favourite.favourite_items.find(params[:id])
        @favourite_item.destroy
        @favourite_items = current_favourite.favourite_items
    end



     private

     def favourite_params
         params.require(:favourite_item).permit(:product_id)
     end
end
