class Session < ApplicationRecord
  has_many :restaurants, dependent: :delete_all

end