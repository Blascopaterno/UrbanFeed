class City < ApplicationRecord
  belongs_to :province
  has_many :complaints
end
