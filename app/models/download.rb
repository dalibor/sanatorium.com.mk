class Download < ActiveRecord::Base

  TYPES = ['Audio', 'Video', 'Interview']

  acts_as_list :scope => 'raw_type=\'#{raw_type}\''
  mount_uploader :attachment, AttachmentUploader

  # Attributes
  attr_accessible :name, :attachment, :raw_type,
                  :name_en

  # Validations
  validates_presence_of :name, :attachment, :raw_type,
                        :name_en
  validates_inclusion_of :raw_type, :in => TYPES
end
