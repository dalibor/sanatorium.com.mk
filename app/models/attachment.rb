class Attachment < ActiveRecord::Base

  mount_uploader :attachment, AttachmentUploader

  # Attributes
  attr_accessible :name, :attachment,
                  :name_en

  # Validations
  validates_presence_of :name, :attachment,
                        :name_en
end
