class Post < ActiveRecord::Base

  # Attributes
  attr_accessible :title, :content, :description, :publish, :published_at

  # Associations
  belongs_to :user
  has_many :comments

  # Validations
  validates_presence_of :title, :content

  #Callbacks
  before_save :reset_published_at, :unless => Proc.new {|m| m.publish }

    private

    def reset_published_at
      self.published_at = nil
    end
end
