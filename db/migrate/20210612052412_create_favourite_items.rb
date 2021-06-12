class CreateFavouriteItems < ActiveRecord::Migration[6.1]
  def change
    create_table :favourite_items do |t|
      t.integer :product_id
      t.integer :favourite_id

      t.timestamps
    end
  end
end
