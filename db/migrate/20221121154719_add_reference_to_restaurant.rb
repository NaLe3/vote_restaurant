class AddReferenceToRestaurant < ActiveRecord::Migration[6.1]
  def change
    add_reference :restaurants, :session, foreign_key: true
  end
end
