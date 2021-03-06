class User < ApplicationRecord
 
   validates :name,presence: true,length:{maximum:15}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
  
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i
  validates :password, presence: true,format: {with: VALID_PASSWORD_REGEX}
  has_secure_password
  
  belongs_to :order
  has_many :carts
  has_many :products
  has_many :cart_products, through: :carts, source: 'product'
end
