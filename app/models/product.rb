class Product < ApplicationRecord
  validates :title,presence: true
  validates :image,presence: true
  validates :description,presence: true
  
  belongs_to :user
  mount_uploader :image, ImageUploader
end
