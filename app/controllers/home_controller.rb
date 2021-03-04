class HomeController < ApplicationController
  before_action :logged_in_people, only: [:edit, :update, :destroy]

  def index
  end
end
