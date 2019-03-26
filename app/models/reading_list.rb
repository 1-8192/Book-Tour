class ReadingList < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  belongs_to :book
end
