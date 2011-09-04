class Song < ActiveRecord::Base

  acts_as_list :scope => :release_id

  # Attributes
  attr_accessible :name, :lyrics,
                  :name_en, :lyrics_en

  # Associations
  belongs_to :release

  # Validations
  validates_presence_of :release_id, :name, :lyrics,
                        :name_en, :lyrics_en
end