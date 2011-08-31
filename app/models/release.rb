class Release < ActiveRecord::Base

  mount_uploader :cover, AlbumCoverUploader

  # Attributes
  attr_accessible :name, :description, :year, :label, :cover,
                  :name_en, :description_en

  # Associations
  has_many :songs

  # Validations
  validates_presence_of :name, :description, :year, :label, :cover,
                        :name_en, :description_en
end
