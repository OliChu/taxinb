class ReviewsController < ApplicationController

  def new
    @animal = Animal.find(params[:animal_id]))
    @review = Review.new
  end

  def create
    @animal = Animal.find(params[:animal_id]))
    @review = Review.new(review_params)
    @review.booking = @animal.
    @booking.user = current_user
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
