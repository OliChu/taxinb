class Review < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  validates :rating, :comment, :user_id, :booking_id, presence: true
  validates :rating, inclusion: { in: (0..5) }
end
