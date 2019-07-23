class ComplaintsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @complaints = Complaint.all
    @complaint = Complaint.new
  end

  def show
  end

  def new
  end

  def create
  end

  def delete
  end
end
