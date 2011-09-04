class AddPositionToDownloads < ActiveRecord::Migration
  def change
    add_column :downloads, :position, :integer
  end
end
