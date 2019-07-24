class ComplaintsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @location = params[:query]
    if @location.present?
      create_map(@location)
    else
      create_map("Madrid")
    end

    @complaint = Complaint.new

    @complaints = Complaint.geocoded

    @markers = @complaints.map do |complaint|
      {
        lat: complaint.latitude,
        lng: complaint.longitude
      }
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

  private

  def create_map(location)
      inter = Geocoder.search(location)
      @results = inter.first.coordinates
      @complaints = Complaint.near(location, 20)
  end
end
