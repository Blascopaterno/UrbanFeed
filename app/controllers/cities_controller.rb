class CitiesController < ApplicationController
  def show
    @city = City.find_by_name(current_user.city)
  end
end
