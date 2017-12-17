class PostLike < ApplicationRecord
  belongs_to :post
  belongs_to :like
end
