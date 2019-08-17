class DeleteColumnProducts < ActiveRecord::Migration[5.2]
  def up
    remove_column :products, :quanity
  end

  def down
    add_column :products, :quanity, :integer
  end
end
