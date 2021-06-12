module ApplicationHelper


    def current_order
        if !session[:order_id].nil?
            Order.find(session[:order_id])
        else
            Order.new 
        end
    end

    def current_favourite
        if !session[:favourite_id].nil?
            Favourite.find(session[:favourite_id])
        else
            Favourite.new 
        end
    end
end
