class CreateRestaurantTable < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string   :name
      t.string   :address
      t.float    :rating
      t.integer  :vote_count
      t.string   :google_place_id

      t.timestamps
    end
  end
end
