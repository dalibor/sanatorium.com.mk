class Gallery < ActiveRecord::Base

  mount_uploader :cover, GalleryCoverUploader

  # Attributes
  attr_accessible :name, :description, :cover

  # Associations
  belongs_to :user
  has_many :photos

  # Validations
  validates_presence_of :name, :description, :cover
end
