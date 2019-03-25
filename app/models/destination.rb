class Destination < ApplicationRecord
  has_many :reading_lists
  has_many :reviews
  has_many :books, through: :reading_lists
  has_many :users, through: :reading_lists
  has_many :books, through: :reviews
  has_many :users, through: :reviews
end
