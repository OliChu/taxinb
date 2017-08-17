class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def bookings
    @user = current_user
  end

  def animals
    @user = current_user
    @animals = Booking.where(animal_id: @user.animals)
  end
end
