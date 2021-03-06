class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :description
      t.string :type
      t.integer :min_players
      t.integer :max_players
      t.boolean :rented
      t.integer :price
      t.references :user, null: false, foreign_key: true
    end
  end
end
