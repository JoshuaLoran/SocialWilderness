class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.string :title
      t.integer :user_id
      t.integer :trip_id

      t.timestamps
    end
  end
end
