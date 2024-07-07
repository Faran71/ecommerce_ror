class Review < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :comment, presence: true

  def as_json(options = {})
    super(options.merge(include: :user))
  end
end
