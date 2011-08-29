require 'spec_helper'

describe Photo do
  describe "Attributes" do
    it { should allow_mass_assignment_of :image }
  end

  describe "Associations" do
    it { should belong_to :gallery }
  end

  describe "Validations" do
    subject { Factory.create(:photo) }
    it { should validate_presence_of :gallery_id }
    it "validates image presence (on create)" do
      photo = Factory.build(:photo, :image => nil)
      photo.should validate_presence_of :image
    end
  end
end
