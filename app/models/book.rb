class Book < ApplicationRecord
  has_many :reading_lists
  has_many :reviews
  has_many :users, through: :reading_lists
  has_many :destinations, through: :reading_lists
  has_many :users, through: :reviews
  has_many :destinations, through: :reviews
end
