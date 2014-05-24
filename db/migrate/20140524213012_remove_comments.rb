class RemoveComments < ActiveRecord::Migration
  def up
    drop_table :comments
  end

  def down
    create_table :comments do |t|
      t.integer :post_id
      t.string :name
      t.string :email
      t.string :url
      t.text :content
      t.string :user_ip
      t.string :user_agent
      t.string :referrer
      t.boolean :approved, :default => true

      t.timestamps
    end
  end
end
