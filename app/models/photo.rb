class Photo < ActiveRecord::Base

  acts_as_list :scope => :gallery_id
  mount_uploader :image, ImageUploader

  # Attributes
  attr_accessible :image

  # Associations
  belongs_to :gallery

  # Validations
  validates_presence_of :gallery_id, :image
end
