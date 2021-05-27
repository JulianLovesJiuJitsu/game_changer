class Game < ApplicationRecord
  belongs_to :user

  has_many :users
  has_many :rentals


  validates :name, :description, :category, presence: true

  validates_numericality_of :min_players, :max_players, :greater_than_or_equal_to => 1, :only_integer => true

  validates :price, numericality: true

  validates :category, inclusion: { in: %w(Strategy Cards Kids Economy RPG Cooperative) }

  has_one_attached :photo
end
