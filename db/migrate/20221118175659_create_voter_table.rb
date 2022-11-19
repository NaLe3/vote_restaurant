class CreateVoterTable < ActiveRecord::Migration[6.1]
  def change
    create_table :voters do |t|
      t.references :restaurant, foreign_key: true
      t.string   :first_name
      t.string   :last_name

      t.timestamps
    end
  end
end
