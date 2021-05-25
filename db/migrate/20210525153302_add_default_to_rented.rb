class AddDefaultToRented < ActiveRecord::Migration[6.0]
  def change
    change_column :games, :rented, :boolean, default: false
  end
end
