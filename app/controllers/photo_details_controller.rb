class PhotoDetailsController < ApplicationController
  def show
    @locations = Location.all
  end
end
