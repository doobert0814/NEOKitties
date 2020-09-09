class RemoveColumnFromToys < ActiveRecord::Migration[5.2]
  def change
    remove_column :toys, :type
  end
end
