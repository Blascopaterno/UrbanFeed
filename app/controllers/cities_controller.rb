class CitiesController < ApplicationController
  def show
    @city = City.find(current_user.city_id)
  end
end
