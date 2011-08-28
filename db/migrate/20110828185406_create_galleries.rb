class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.integer :photos_count, :default => 0

      t.timestamps
    end
  end
end
