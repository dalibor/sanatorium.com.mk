require 'spec_helper'

describe User do
  describe "Attributes" do
    it { should allow_mass_assignment_of(:email) }
    it { should allow_mass_assignment_of(:password) }
    it { should allow_mass_assignment_of(:password_confirmation) }
    it { should_not allow_mass_assignment_of(:password_digest) }
  end

  describe "Validations" do
    it { should validate_presence_of :email }
    it { should validate_presence_of :password }

    it "should not validate_presence_of :password on update" do
      user = Factory(:user)
      user.password = nil
      user.valid?
      user.errors[:password].should be_blank
    end

    it "should validate_uniqueness_of :email" do
      user = Factory(:user)
      user.should validate_uniqueness_of :email
    end

    it "should validate_format_of :email" do
      user = Factory.build(:user, :email => 'admin')
      user.valid?
      user.errors[:email].should include('is not formatted properly')

      user = Factory.build(:user, :email => 'admin@sanatorium.com.mk')
      user.valid?
      user.errors[:email].should_not include('is not formatted properly')
    end
  end
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

