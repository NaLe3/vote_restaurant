class Restaurant < ApplicationRecord
  has_many :voters, dependent: :delete_all
end