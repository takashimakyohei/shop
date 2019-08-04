class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :image
      t.string :description
      t.integer :price
      t.integer :user_id

      t.timestamps
    end
  end
end
