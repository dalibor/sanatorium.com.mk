class Page < ActiveRecord::Base

  # Attributes
  attr_accessible :content

  # Validations
  validates_presence_of :key, :content
  validates_uniqueness_of :key
end
