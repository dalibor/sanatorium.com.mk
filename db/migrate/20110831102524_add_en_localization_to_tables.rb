class AddEnLocalizationToTables < ActiveRecord::Migration
  def change
    add_column :posts, :title_en, :string
    add_column :posts, :content_en, :text
    add_column :posts, :description_en, :string
    add_column :galleries, :name_en, :string
    add_column :galleries, :description_en, :text
    add_column :downloads, :name_en, :string
    add_column :releases, :name_en, :string
    add_column :releases, :description_en, :text
    add_column :songs, :name_en, :string
    add_column :songs, :lyrics_en, :text
    add_column :pages, :content_en, :text
    add_column :attachments, :name_en, :string
  end
end
