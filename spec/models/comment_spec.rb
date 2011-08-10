require 'spec_helper'

describe Comment do
  describe "Attributes" do
    it { should allow_mass_assignment_of :name }
    it { should allow_mass_assignment_of :email }
    it { should allow_mass_assignment_of :url }
    it { should allow_mass_assignment_of :content }
    it { should allow_mass_assignment_of :user_ip }
    it { should allow_mass_assignment_of :user_agent }
    it { should allow_mass_assignment_of :referrer }
    it { should_not allow_mass_assignment_of :post_id }
    it { should_not allow_mass_assignment_of :approved }
  end

  describe 'Associations' do
    it { should belong_to :post }
  end

  describe 'Validations' do
    it { should validate_presence_of :post_id }
    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
    it { should validate_presence_of :content }

    it "should validate_format_of :email" do
      user = Factory.build(:user, :email => 'user')
      user.valid?
      user.errors[:email].should include('is not formatted properly')

      user = Factory.build(:user, :email => 'user@sanatorium.com.mk')
      user.valid?
      user.errors[:email].should_not include('is not formatted properly')
    end

    it "should validate format of url when url is not blank" do
      comment = Factory.build(:comment, :url => 'sanatorium')
      comment.should_not be_valid
      comment.errors[:url].should include("is invalid")
    end

    it "should not validate format of url when url is blank" do
      comment = Factory.create(:comment, :url => '', :post => Factory.create(:post))
      comment.should be_valid
      comment.errors[:url].should be_empty
    end

    it "should add protocol to url when url doesn't start with http protocol and save the comment" do
      comment = Factory.build(:comment, :url => 'sanatorium.com.mk', :post => Factory.create(:post))
      comment.save.should be_true
      comment.url.should == 'http://sanatorium.com.mk'
    end

  end

end
