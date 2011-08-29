class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
      t.string :name
      t.string :attachment
      t.string :raw_type

      t.timestamps
    end
  end
end
