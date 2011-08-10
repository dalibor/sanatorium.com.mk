class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.text :content
      t.string :description
      t.boolean :publish
      t.datetime :published_at
      t.integer :comments_count, :default => 0

      t.timestamps
    end
  end
end
