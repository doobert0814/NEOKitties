class RemoveColumnFromKitties < ActiveRecord::Migration[5.2]
  def change
    remove_column :kitties, :string
    remove_column :kitties, :fed
  end
end
