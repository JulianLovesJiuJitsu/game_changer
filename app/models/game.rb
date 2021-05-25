class Game < ApplicationRecord
  belongs_to :user

  validates_presence_of :name, :description, :type, min_players:, :max_players, :price
end
