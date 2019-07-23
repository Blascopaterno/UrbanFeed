class Complaint < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :type
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
