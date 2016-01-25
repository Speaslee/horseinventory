class AddColumnToHorse < ActiveRecord::Migration
  def change
    add_column :horses, :birthday, :datetime
    add_column :horses, :age, :integer
  end
end
