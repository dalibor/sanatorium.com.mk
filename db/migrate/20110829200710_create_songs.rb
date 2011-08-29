class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :release_id
      t.string :name
      t.text :lyrics
      t.integer :position

      t.timestamps
    end
  end
end
