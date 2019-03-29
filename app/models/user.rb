class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true
  validates :username, uniqueness: true
  validates :email, uniqueness: true

  has_many :reading_lists
  has_many :reviews
  has_many :books, through: :reading_lists
  has_many :destinations, through: :reading_lists
  has_many :books, through: :reviews
  has_many :destinations, through: :reviews

  def get_reading_lists
    reading_lists = ReadingList.where(user_id: self.id)
    array = []
    reading_lists.each do |rl|
      array << rl.destination
    end
    return array.uniq
  end

end
