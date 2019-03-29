class Destination < ApplicationRecord
  has_many :reading_lists
  has_many :reviews
  has_many :books, through: :reading_lists
  has_many :users, through: :reading_lists
  has_many :books, through: :reviews
  has_many :users, through: :reviews

  # finds book titles that have been reviewed for destination without repeats
  def get_uniq_reviews
    reviews = Review.where(destination_id: self.id)
    uniq_reviews = []
    reviews.each do |rev|
       uniq_reviews << rev.book
    end
    return uniq_reviews.uniq
  end

#Picks a random review to preview on the destination show page
  def get_sample
    reviews = Review.where(destination_id: self.id)
    sample = reviews[rand(reviews.length)]
    return sample
  end

#Search bar refines index by country
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

#I'm feeling lucky button pulls up a radom show page
  def self.random_destination
    self.all.sample
  end

#for analytics. Finds destination with the most attached book reviews
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
