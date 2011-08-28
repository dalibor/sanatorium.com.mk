require 'spec_helper'

describe Gallery do
  describe "Attributes" do
    it { should allow_mass_assignment_of :name }
    it { should allow_mass_assignment_of :description }
    it { should allow_mass_assignment_of :cover }
    it { should_not allow_mass_assignment_of :user_id }
  end

  describe "Associations" do
    it { should belong_to :user }
    #it { should have_many :photos }
  end

  describe 'Validations' do
    subject { Factory.create(:gallery) }
    it { should be_valid }
    it { should validate_presence_of :name }
    it { should validate_presence_of :description }
    it "validates cover presence (on create)" do
      gallery = Factory.build(:gallery, :cover => nil)
      gallery.should validate_presence_of :cover
    end
  end

  #describe "photos count" do
    #it "counts photos" do
      #gallery = Factory(:gallery)

      #photo1 = Factory(:photo, :gallery => gallery)
      #gallery.reload.photos_count.should == 1

      #photo2 = Factory(:photo, :gallery => gallery)
      #gallery.reload.photos_count.should == 2

      #photo2.destroy
      #post.reload.comments_count.should == 1
    #end
  #end
end
