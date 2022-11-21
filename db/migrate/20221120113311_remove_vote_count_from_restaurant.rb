class RemoveVoteCountFromRestaurant < ActiveRecord::Migration[6.1]
  def change
    remove_column :restaurants, :vote_count, :integer
  end
end
