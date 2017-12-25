class Post < ApplicationRecord
  belongs_to :user
  belongs_to :univ
  has_many :comments
  has_many :likes, through: :like_and_posts, dependent: :destroy
  has_many :like_and_posts
  
  validates :title,  presence: true, length: {maximum: 20}
  validates :body,  presence: true, length: {maximum: 2000}
end
