class AddFeaturedToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :featured, :boolean, :default => false
  end
end
