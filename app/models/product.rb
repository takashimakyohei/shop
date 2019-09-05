class Product < ApplicationRecord
  validates :title,presence: true
  validates :image,presence: true
  validates :description,presence: true
  
  belongs_to :order,optional: true
  belongs_to :user
  has_many:carts
  has_many :cart_users, through: :carts, source: 'user'
  mount_uploader :image, ImageUploader
end
