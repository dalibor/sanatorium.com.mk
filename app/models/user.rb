class User < ActiveRecord::Base
  # Authentication
  has_secure_password

  # Attributes
  attr_accessible :email, :password, :password_confirmation

  # Validations
  validates_presence_of :email
  validates_presence_of :password, :on => :create
  validates_uniqueness_of :email
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

