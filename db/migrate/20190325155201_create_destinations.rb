class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.string :booking_url
      t.string :name
      t.string :location_url
      t.string :description

      t.timestamps
    end
  end
end
