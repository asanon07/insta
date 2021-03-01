class PeopleController < ApplicationController
  def index
    @msg = "Person data."
    @data = Person.all
  end

  def add
    @person = Person.new
  end

  def create
    if request.post?
      Person.create(person_params)
    end
    redirect_to "/people"
  end

  private

  def person_params
    params.require(:person).permit(:name, :age, :email)
  end
end
