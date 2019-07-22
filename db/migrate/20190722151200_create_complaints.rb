class CreateComplaints < ActiveRecord::Migration[5.2]
  def change
    create_table :complaints do |t|
      t.text :description
      t.string :picture
      t.string :address
      t.integer :upvote
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
