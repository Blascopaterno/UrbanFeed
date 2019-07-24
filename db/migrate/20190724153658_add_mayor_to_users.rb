class AddMayorToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :mayor, :boolean, default: false
  end
end
