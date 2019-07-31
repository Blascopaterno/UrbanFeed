class AddFavoriteToComplaints < ActiveRecord::Migration[5.2]
  def change
    add_column :complaints, :favorite, :boolean, default: false
  end
end
