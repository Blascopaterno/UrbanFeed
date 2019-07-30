class ComplaintsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    unless params[:query] == "" || params[:query].nil?
      @location = params[:query]
    else
      @location = "Madrid"
    end
    create_map(@location)

    @complaint = Complaint.new

    # this make us use the current location so dont comment it out.
    @complaints = Complaint.near(@location, 20)

    @markers = @complaints.map do |complaint|
      {
        lat: complaint.latitude,
        lng: complaint.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { complaint: complaint })
      }
    end
  end

  def show
    @complaint = Complaint.find(params[:id])
  end

  def new
    @complaint = Complaint.new
  end

  def create
    @complaint = Complaint.new(complaint_params)
    @complaint.upvote = 1
    @complaint.user = current_user
    @complaint.category = Category.find(params[:complaint][:category_id])
    @complaint.type = Type.find(params[:complaint][:type_id])
    address_to_city = Geocoder.search(@complaint.address)[0].data["address"]["city"]
    @complaint.city = City.find_by_name(address_to_city)
    if @complaint.save
      redirect_to complaints_path
    else
      render :new
    end
  end

  def destroy
    @complaint = Complaint.find(params[:id])
    @complaint.destroy
    redirect_to profile_path
  end

  def upvote
    @complaint = Complaint.find(params[:complaint])
    @complaint.upvote += 1
    @complaint.save

    if @complaint.save
      respond_to do |format|
        format.html { redirect_to complaints_path }
        format.js  # <-- will render `app/views/complaints/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'complaints/index' }
        format.js  # <-- idem
      end
    end
  end

  private

  def create_map(location)
    inter = Geocoder.search(location)
    @results = inter.first.coordinates if inter.first.present?
    @complaints = Complaint.near(location, 20)
  end

  def complaint_params
    params.require(:complaint).permit(:description, :picture, :address, :category_id, :type_id)
  end
end
