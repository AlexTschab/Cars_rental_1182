class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @car = Car.find(params[:car_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.user = current_user
    @booking.car = @car
    @booking.status = "pending"
    @booking.price = (@booking.end_date - @booking.start_date).to_i * 20
    if @booking.save
      redirect_to car_path(@car)
    else
      raise
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:car_id, :start_date, :end_date)
  end
end
