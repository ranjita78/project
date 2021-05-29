class Product < ApplicationRecord
    has_many :order_items

    def self.search(search)
        if search 
           where(["title LIKE ?","#{search}%"])

        else
            all
        end
    end
end
