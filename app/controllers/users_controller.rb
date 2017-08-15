class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def bookings
    @user = current_user
  end

  def animals
    @user = current_user
  end
end
