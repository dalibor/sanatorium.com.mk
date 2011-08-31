class Page < ActiveRecord::Base

  # Attributes
  attr_accessible :content,
                  :content_en

  # Validations
  validates_presence_of :key, :content,
                        :content_en
  validates_uniqueness_of :key
end
