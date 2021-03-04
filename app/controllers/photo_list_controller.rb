class PhotoListController < ApplicationController
  def show
    @locations = Location.all
  end
end
