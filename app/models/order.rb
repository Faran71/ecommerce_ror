class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :quantity_sold, presence: true
end
