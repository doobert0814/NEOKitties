class AddColumnToKitties < ActiveRecord::Migration[5.2]
  def change
    add_column :kitties, :coat, :string
    add_column :kitties, :alive, :boolean
    add_column :kitties, :hungry, :boolean
    add_column :kitties, :happiness, :integer
    add_column :kitties, :user_id, :integer
    add_column :kitties, :toy_id, :integer
    add_column :kitties, :time_fed, :timestamp
  end
end
