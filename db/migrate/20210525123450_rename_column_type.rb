class RenameColumnType < ActiveRecord::Migration[6.0]
  def change
    rename_column :games, :type, :category
  end
end
