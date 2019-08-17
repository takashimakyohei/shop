class AddColumnCarts < ActiveRecord::Migration[5.2]
  def up
    add_column :carts, :quanity, :integer
  end

  def down
   remove_column :carts, :quanity
  end
end
