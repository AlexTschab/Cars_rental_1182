class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to car_path(@car)
    else
      render :new, status: :unprocessible_entity
    end
  end

  private

  def car_params
    params.require(:car).permit(:brand, :model, :year_of_production, :transmission, :fuel_type)
  end

end
