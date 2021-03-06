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

  def self.search_by_genre(search)
    if search
      temp_array = self.where("genre LIKE ?", "%#{search}%")
      if !temp_array.empty?
        temp_array
      else
        self.all
      end
    else
      self.all
    end
  end

  def self.random_book
    self.all.sample
  end

  def self.most_reviewed_book
    i = 0
    most_reviewed_book = []
    self.all.each do |book|
      x = book.reviews.count
      if x > i
        most_reviewed_book = book
        i = x
      end
    end
    most_reviewed_book
  end

end
