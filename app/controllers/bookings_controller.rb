class BookingsController < ApplicationController


  def index
    @bookings = Booking.all.current_user
  end

  # def show
  #   @booking = Booking.find(params[:id])
  # end

  def new
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @booking = Booking.new(booking_params)
    @booking.animal = @animal
    @booking.user = current_user
    if @booking.save
      redirect_to animal_path(@animal)
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
    params.require(:booking).permit(:start_date, :end_date)
  end
end
