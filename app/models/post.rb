class Post < ApplicationRecord
  belongs_to :user
  belongs_to :univ
  has_many :comments
  has_many :likes
  has_many :messages

  validates :title,  presence: true, length: {maximum: 20}
  validates :body,  presence: true, length: {maximum: 2000}
end
