class Product < ApplicationRecord
    has_many :order_items
    has_many :favourite_items
    belongs_to :category

    def Product.search(search)
        if search 
           where(["title LIKE ?","#{search}%"])

        else
            all
        end
    end
end
