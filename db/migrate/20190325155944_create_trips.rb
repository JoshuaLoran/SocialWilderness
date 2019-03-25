class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :destination_id
      t.integer :user_id
      t.string :title

      t.timestamps
    end
  end
end
