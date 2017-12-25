class LikeAndPost < ApplicationRecord
  belongs_to :like
  belongs_to :post
end
