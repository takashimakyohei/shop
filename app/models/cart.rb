class Cart < ApplicationRecord
  belongs_to :product
  belongs_to :user
  validates :quanity,presence: true
end
