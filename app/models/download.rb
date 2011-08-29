class Download < ActiveRecord::Base

  TYPES = ['Audio', 'Video', 'Interview']

  mount_uploader :attachment, AttachmentUploader

  # Attributes
  attr_accessible :name, :attachment, :raw_type

  # Validations
  validates_presence_of :name, :attachment, :raw_type
  validates_inclusion_of :raw_type, :in => TYPES
end
