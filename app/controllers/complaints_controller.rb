class ComplaintsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @complaints = Complaint.all
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