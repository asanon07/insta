class PeopleController < ApplicationController
  def index
    @msg = "Person data."
    @data = Person.all
  end

  def add
    @person = Person.new
  end

  def create
    @person = Person.new person_params
    if @person.save
      redirect_to "/people"
    else
      re = ""
      @person.errors.messages.each do |key, vals|
        vals.each do |val|
          re += '<span style="color:red">' + Person.human_attribute_name(key).to_s +
                "</span> " + val + "<br>"
        end
      end
      @msg = re.html_safe
      render "add"
    end

    if request.post?
      Person.create(person_params)
    end
  end

  private

  def person_params
    params.require(:person).permit(:name, :age, :email, :password)
  end
end
