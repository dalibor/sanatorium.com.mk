class User < ActiveRecord::Base
  # Authentication
  has_secure_password

  # Attributes
  attr_accessible :email, :password, :password_confirmation

  # Associations
  has_many :posts

  # Validations
  validates_presence_of :password, :on => :create
  validates :email, :presence => true, :uniqueness => true, :email_format => true
end
# == Schema Information
#
# Table name: users
#
#  id              :integer         not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

