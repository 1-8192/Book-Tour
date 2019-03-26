class User < ApplicationRecord
  has_secure_password
  
  has_many :reading_lists
  has_many :reviews
  has_many :books, through: :reading_lists
  has_many :destinations, through: :reading_lists
  has_many :books, through: :reviews
  has_many :destinations, through: :reviews
end
