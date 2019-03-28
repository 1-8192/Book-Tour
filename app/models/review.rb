class Review < ApplicationRecord
  belongs_to :book
  belongs_to :destination
  belongs_to :user

  validates :title, presence: true
  validates :review_body, presence: true 
end
