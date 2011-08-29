class Release < ActiveRecord::Base

  mount_uploader :cover, AlbumCoverUploader

  # Attributes
  attr_accessible :name, :description, :year, :label, :cover

  # Associations
  has_many :songs

  # Validations
  validates_presence_of :name, :description, :year, :label, :cover
end
