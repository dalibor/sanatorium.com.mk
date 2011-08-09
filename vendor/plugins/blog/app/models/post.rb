class Post < ActiveRecord::Base

  # Attributes
  attr_accessible :title, :content, :description, :publish, :published_at

  # Associations
  belongs_to :user

  # Validations
  validates_presence_of :title
end
