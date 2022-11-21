class Restaurant < ApplicationRecord
  has_many :voters, dependent: :delete_all
  belongs_to :session

end