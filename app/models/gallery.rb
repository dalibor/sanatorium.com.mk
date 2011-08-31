class Gallery < ActiveRecord::Base

  mount_uploader :cover, GalleryCoverUploader

  # Attributes
  attr_accessible :name, :description, :cover,
                  :name_en, :description_en

  # Associations
  belongs_to :user
  has_many :photos

  # Validations
  validates_presence_of :name, :description, :cover,
                        :name_en, :description_en
end
