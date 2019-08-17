class RemoveColumnCarts < ActiveRecord::Migration[5.2]
    def up
    remove_column :carts, :product_price
  end

  def down
   add_column :carts, :product_price,:integer
  end
end
