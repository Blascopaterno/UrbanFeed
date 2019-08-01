class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def profile
    @user = current_user
  end

  def create_email
    complaint = Complaint.find(params[:complaint])
    complaint.favorite = false
    complaint.save
  end
end
