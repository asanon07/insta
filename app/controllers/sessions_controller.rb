class SessionsController < ApplicationController
  def new
  end

  def create
    people = Person.find_by(email: params[:session][:email].downcase)
    if people && people.authenticate(params[:session][:password])
      log_in people
      redirect_to root_url
    else
      render "new"
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
