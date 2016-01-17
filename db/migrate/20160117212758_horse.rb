class Horse < ActiveRecord::Migration
  def change
    create_table(:horses) do |t|
    t.string :name
    t.integer :saddle_number
    t.string :color
    t.string :breed
    t.string :string
    t.text :notes
    t.string :picture
    t.string :other_docs
  end
  end
end
