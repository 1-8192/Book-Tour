class Destination < ApplicationRecord
  has_many :reading_lists
  has_many :reviews
  has_many :books, through: :reading_lists
  has_many :users, through: :reading_lists
  has_many :books, through: :reviews
  has_many :users, through: :reviews

  def get_uniq_reviews
    reviews = Review.where(destination_id: self.id)
    uniq_reviews = []
    reviews.each do |rev|
       uniq_reviews << rev.book
    end
    return uniq_reviews.uniq
  end

  def get_sample
    reviews = Review.where(destination_id: self.id)
    sample = reviews[rand(reviews.length)]
    return sample
  end

  def self.search_by_country(search)
    if search
      temp_array = self.where("country LIKE ?", "%#{search}%")
      if !temp_array.empty?
        temp_array
      else
        self.all
      end
    else
      self.all
    end
  end

  def self.random_destination
    self.all.sample
  end

  def self.most_read_destination
    i = 0
    most_read_dest = []
    self.all.each do |dest|
      x = dest.books.count
      if x > i
        most_read_dest = dest
        i = x
      end
    end
    most_read_dest
  end

end
