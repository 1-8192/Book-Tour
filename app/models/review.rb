class Review < ApplicationRecord
  belongs_to :book
  belongs_to :destination
  belongs_to :user
end
