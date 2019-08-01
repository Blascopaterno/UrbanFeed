class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def basket
    @complaint = Complaint.find(params[:complaint])
    @complaint.favorite = true
    if @complaint.save
      if params[:city].present?
        redirect_to city_path(params[:city].to_i), notice: "Complaint was succesfully added!"
      elsif params[:type].present?
        redirect_to type_path(params[:type].to_i), notice: "Complaint was succesfully added!"
      end
    end
  end
end
