class Product < ApplicationRecord
  has_many :order, dependent: :destroy
  has_many :review, dependent: :destroy

  validates :name, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :image_url, presence: true
  validates :category, presence: true
  validates :rating, presence: true
  validates :description, presence: true
end
