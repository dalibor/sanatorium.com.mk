class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.string :name
      t.text :description
      t.integer :year
      t.string :label
      t.string :cover

      t.timestamps
    end
  end
end
