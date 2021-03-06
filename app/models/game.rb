class Game < ApplicationRecord
  belongs_to :user

  has_many :users
  has_many :rentals


  validates :name, :description, :category, presence: true

  validates_numericality_of :min_players, :max_players, :greater_than_or_equal_to => 1, :only_integer => true

  validates :price, numericality: true

  CATEGORY = ['Strategy', 'Cards', 'Kids', 'Economy', 'RPG', 'Cooperative', 'Other']

  validates :category, inclusion: { in: CATEGORY }

  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name_and_location,
    against: [:location, :name],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
