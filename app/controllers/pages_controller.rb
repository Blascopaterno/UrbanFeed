class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def profile
    @user = current_user
  end

  #def user_profile # is actually author profile
  #end
end
