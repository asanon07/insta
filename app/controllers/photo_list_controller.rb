class PhotoListController < ApplicationController
  def show
    @locations = Location.all
  end

  def search
    if params[:keyword].present?
      @locations = Location.where('prefecture LIKE ?', "%#{params[:keyword]}%")
      @keyword = params[:keyword]
    else
      @locations = Location.all
    end
  end

end
