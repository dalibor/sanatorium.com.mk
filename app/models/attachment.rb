class Attachment < ActiveRecord::Base

  mount_uploader :attachment, AttachmentUploader

  # Attributes
  attr_accessible :name, :attachment

  # Validations
  validates_presence_of :name, :attachment
end
