class LocationsController < ApplicationController
  def show
    @locations = Location.all
  end

  def create
    @location = Location.new(permit_params)
    @location.save!
    redirect_to action: "show"
  end

  private

  def permit_params
    params.require(:location).permit(:name, :prefecture, :municipalities, :address, :division, :photo, :photo_description)
  end
end
