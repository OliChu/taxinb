class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :animal
  has_one :review
  validates :start_date, :end_date, :user_id, :animal_id, presence: true

  def accept
    self.status = "Accepted"
  end

  def decline
    self.status = "Declined"
  end

end
