class BookingsController < ApplicationController

  def new
    @bookings = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params [:Car_id])
    @booking.car = @Car
    @booking.status = "pending"
    if @booking.save
      redirect_to car_path(@car)
    else
      render "car/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:car_id, :start_date, :end_date)
  end
end
