class Gallery < ActiveRecord::Base

  mount_uploader :cover, CoverUploader

  # Attributes
  attr_accessible :name, :description, :cover

  # Associations
  belongs_to :user

  # Validations
  validates_presence_of :name, :description, :cover
end
