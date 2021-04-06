class LocationsController < ApplicationController
  def show
    @locations = Location.all
  end

  def create
    @location = Location.new(permit_params)
    if @location.save
      redirect_to action: "thanks"
    else
      re = ""
      @location.errors.messages.each do |key, vals|
        vals.each do |val|
          re += '<span style="color:red">' + Location.human_attribute_name(key).to_s +
                "</span> " + val + "<br>"
        end
      end
      @msg = re.html_safe
      render :action => "show"
    end
  end

  def thanks
    # 完了画面を表示
    render :action => "thanks"
  end

  private

  def permit_params
    params.require(:location).permit(:name, :prefecture, :municipalities, :address, :division, :photo, :photo_description)
  end
end
