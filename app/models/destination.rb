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
      self.where("country LIKE ?", "%#{search}%")
    else
      self.all
    end
  end

  def self.random_destination
    self.all.sample
  end

end
