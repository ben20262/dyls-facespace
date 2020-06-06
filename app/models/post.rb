class Post < ApplicationRecord
  belongs_to :seller
  has_many :user_posts
  has_many :users, through: :user_posts
end
