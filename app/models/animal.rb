class Animal < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, :description, :address, :daily_price, presence: true
end
