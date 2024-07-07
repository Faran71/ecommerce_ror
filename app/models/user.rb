class User < ApplicationRecord
  has_many :order, dependent: :destroy
  has_many :review, dependent: :destroy

  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :wallet, presence: true
end
