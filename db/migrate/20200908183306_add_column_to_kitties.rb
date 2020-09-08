class AddColumnToKitties < ActiveRecord::Migration[5.2]
  def change
    add_column :kitties, :coat, :string
    add_column :kitties, :alive, :boolean
    add_column :kitties, :fed, :boolean
    add_column :kitties, :happiness, :integer
  end
end
