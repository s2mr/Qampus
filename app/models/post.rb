class Post < ApplicationRecord
  belongs_to :user
  belongs_to :univ
  has_many :comment
end
