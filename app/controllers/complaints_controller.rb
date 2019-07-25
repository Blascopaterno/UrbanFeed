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
    @complaint = Complaint.new(complaint_params)
    @complaint.upvote = 1
    @complaint.user = current_user
    @complaint.category = Category.find_by_name(params[:complaint][:category])
    @complaint.type = Type.find_by_name(params[:complaint][:type])
    if @complaint.save
      redirect_to complaints_path
    else
      render :new
    end
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

  def complaint_params
    params.require(:complaint).permit(:description, :picture, :address, :category_id, :type_id)
  end
end
