class Photo < ActiveRecord::Base

  acts_as_list :scope => :gallery_id
  mount_uploader :image, ImageUploader

  # Attributes
  attr_accessible :image

  # Associations
  belongs_to :gallery

  # Validations
  validates_presence_of :gallery_id, :image

  # TODO: spec
  def self.featured
    gallery = Gallery.where({:featured => true}).order('updated_at DESC').first
    gallery ? gallery.photos.order('position ASC') : []
  end
end
