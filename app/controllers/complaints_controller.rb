class ComplaintsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @complaints = Complaint.all
    @complaint = Complaint.new

    @complaints = Complaint.geocoded

        @markers = @complaints.map do |complaint|
      {
        lat: complaint.latitude,
        lng: complaint.longitude
      }
    end

    if params[:query].present?
      @complaints = Complaint.where(address: params[:query])
    else
      @complaints = Complaint.all
    end
  end

  def show
    @complaints = Complaint.find(params[:id])
  end

  def new
    @complaints = Complaint.new
  end

  def create

  end

  def delete
  end

  private

  def find_address
    @address = request.location.city
  end
end
