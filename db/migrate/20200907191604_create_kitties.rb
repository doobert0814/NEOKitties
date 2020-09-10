class CreateKitties < ActiveRecord::Migration[5.2]
  def change
    create_table :kitties do|t|
      t.string :name
      t.timestamp :age
      t.string :color
      t.string :breed
      t.string :string
      t.string :catchphrase

      t.timestamp
    end
  end
end
