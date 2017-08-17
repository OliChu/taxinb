class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :animal
  has_one :review
  validates :start_date, :end_date, :user_id, :animal_id, presence: true

  def accept
    self.status = "accepted"
  end

  def decline
    self.status = "declined"
  end

end
