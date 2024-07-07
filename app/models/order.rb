class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :quantity_sold, presence: true

  def as_json(options = {})
    super(options.merge(include: :product))
  end
end
