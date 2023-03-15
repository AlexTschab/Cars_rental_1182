class BookingsController < ApplicationController
  before_action :set_user

  def index
    @user = current_user
    @bookings = Booking.where(user_id: @user.id)
  end

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
      redirect_to bookings_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @car = @booking.car
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:car_id, :start_date, :end_date)
  end

  def set_user
    @user = current_user
  end
end
