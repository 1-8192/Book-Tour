class Book < ApplicationRecord
  has_many :reading_lists
  has_many :reviews
  has_many :users, through: :reading_lists
  has_many :destinations, through: :reading_lists
  has_many :users, through: :reviews
  has_many :destinations, through: :reviews

  def self.search_by_title(search)
    if search
      temp_array= self.where("title LIKE ?", "%#{search}%")
      if !temp_array.empty?
        temp_array
      else
        self.all
      end
    else
      self.all
    end
  end

  def self.search_by_author(search)
    if search
      temp_array = self.where("author LIKE ?", "%#{search}%")
      if !temp_array.empty?
        temp_array
      else
        self.all
      end
    else
      self.all
    end
  end

end
