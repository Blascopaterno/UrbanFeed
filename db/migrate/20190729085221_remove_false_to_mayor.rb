class RemoveFalseToMayor < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :mayor
    add_column :users, :mayor, :boolean
  end
end
