class Post < ApplicationRecord
  belongs_to :seller
  has_many :user_posts
  has_many :users, through: :user_posts

  def self.scrape

    cards = Nokogiri::HTML(open('https://www.facebook.com/marketplace/114524681898218/cars'))
    binding.pry
    cards
  end
end
