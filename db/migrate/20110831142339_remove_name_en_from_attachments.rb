class RemoveNameEnFromAttachments < ActiveRecord::Migration
  def up
    remove_column :attachments, :name_en
  end

  def down
    add_column :attachments, :name_en, :string
  end
end
