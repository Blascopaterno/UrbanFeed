class AddBasketToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :basket, :string, array: true, default: []
  end
end
