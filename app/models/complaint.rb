class Complaint < ApplicationRecord
  mount_uploader :picture, PictureUploader
  belongs_to :user
  belongs_to :category
  belongs_to :type
  belongs_to :city
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
