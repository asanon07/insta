class PhotoListController < ApplicationController
  def show
    #@locations = Location.find_by(id: params[:id])
    @locations = Location.all
  end
end
