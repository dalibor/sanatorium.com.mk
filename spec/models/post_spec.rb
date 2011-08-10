require 'spec_helper'

describe Post do
  describe "Attributes" do
    it { should allow_mass_assignment_of :title }
    it { should allow_mass_assignment_of :content }
    it { should allow_mass_assignment_of :description }
    it { should allow_mass_assignment_of :publish }
    it { should allow_mass_assignment_of :published_at }
    it { should_not allow_mass_assignment_of :user_id }
  end

  describe "Associations" do
    it { should belong_to :user }
    it { should have_many :comments }
  end

  describe 'Validations' do
    subject { Factory.create(:post) }
    it { should be_valid }
    it { should validate_presence_of :title }
    it { should validate_presence_of :content }
  end

  describe 'published_at timestamp' do
    it "should not set published_at timestamp if publish is false" do
      post = Factory.build(:post, :publish => false)
      post.save.should be_true
      post.published_at.should be_nil
    end

    it "should set published_at timestamp if publish is true" do
      post = Factory.build(:post, :publish => true)
      post.save.should be_true
      post.published_at.should_not be_nil
    end

    it "published_at timestamp does not change when editing record without changing publish" do
      published_at = Time.now - 1.day
      post = Factory.create(:post, :publish => true, :published_at => published_at)
      post.title = 'New title'
      post.save!
      post.published_at.should == published_at
    end
  end

end
