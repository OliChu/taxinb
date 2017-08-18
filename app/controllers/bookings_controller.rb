class BookingsController < ApplicationController


  def index
    @bookings = Booking.all.current_user
  end

  def show
    # @booking = Booking.find(params[:id])
    @animal = Animal.find(params[:animal_id])
  end

  def new
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new(booking_params)
    @booking.animal = @animal
    @booking.user = current_user
    @booking.price = (@booking.end_date - @booking.start_date).to_i * @animal.daily_price
    @booking.status = "Pending"
    if @booking.save
      redirect_to animal_booking_path(@animal, @booking.user)
    else
      render 'new'
    end
  end

  def edit
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    @booking.price = (@booking.end_date - @booking.end_date) * @animal.daily_price
    @animal = @booking.animal
    redirect_to animal_path(@animal)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to animals_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
