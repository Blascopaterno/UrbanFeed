class AddCoordinatesToComplaints < ActiveRecord::Migration[5.2]
  def change
    add_column :complaints, :latitude, :float
    add_column :complaints, :longitude, :float
  end
end
