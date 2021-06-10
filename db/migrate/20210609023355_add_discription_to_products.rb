class AddDiscriptionToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :discription, :string
  end
end
