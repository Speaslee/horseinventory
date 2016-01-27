class AddColumnToHorses < ActiveRecord::Migration
  def change
    add_column :horses, :archived, :boolean
  end
end
