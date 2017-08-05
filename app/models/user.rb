class User < ApplicationRecord
  
  before_create :if_thumbnail_is_nil_thumbnail_is_random, on: :create

<<<<<<< HEAD
has_many :post
has_many :univ
belongs_to :status
=======
  has_many :post
  
>>>>>>> 1840db02b374dce96bc7a75a696ed700f655e082
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  private
  
  def if_thumbnail_is_nil_thumbnail_is_random
    if thumbnail == ''
      self.thumbnail = "thumbnails/#{rand(0..9)}.png"
    else 
    end
  end
end
