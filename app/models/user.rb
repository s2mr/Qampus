class User < ApplicationRecord

  before_create :if_thumbnail_is_nil_thumbnail_is_random, on: :create

  has_many :likes, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :posts, through: :likes
  has_many :univs

  has_many :comments, dependent: :destroy
  belongs_to :status


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :image, ImageUploader

  private

  def if_thumbnail_is_nil_thumbnail_is_random
    if thumbnail.nil?
      self.thumbnail = "thumbnails/#{rand(0..9)}.png"
    else
    end
    if image.nil?
      self.image = "thumbnails/#{rand(0..9)}.png"
    else
    end
  end
end
