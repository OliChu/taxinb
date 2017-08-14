class Animal < ApplicationRecord
  belongs_to :user
  has_many :bookings
  mount_uploader :photo, PhotoUploader
  validates :title, :description, :address, :daily_price, presence: true
end
