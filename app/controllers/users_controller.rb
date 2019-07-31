class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def basket
    @complaint = Complaint.find(params[:complaint])
    @complaint.favorite = true
    @complaint.save
  end
end
