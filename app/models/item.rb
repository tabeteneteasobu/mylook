class Item < ApplicationRecord
  #ActiveHash
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :color

  #アソシエーション
  has_one_attached :image
  
  # バリデーション
  validates :color_id,    presence: true
  validates :category_id, presence: true
  validates :brand,       presence: true
  validates :image,       presence: true
end
