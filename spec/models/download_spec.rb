require 'spec_helper'

describe Download do
  describe "Attributes" do
    it { should allow_mass_assignment_of :name }
    it { should allow_mass_assignment_of :attachment }
    it { should allow_mass_assignment_of :raw_type }
  end

  describe 'Validations' do
    subject { Factory.create(:download) }
    it { should be_valid }
    it { should validate_presence_of :name }
    it { should validate_presence_of :raw_type }

    it "validates cover presence (on create)" do
      download = Factory.build(:download, :attachment => nil)
      download.should validate_presence_of :attachment
    end

    it "validates inclusion of raw type" do
      download = Factory.build(:download, :raw_type => "Invalid")
      download.valid?.should be_false
      download.raw_type = 'Audio'
      download.valid?.should be_true
    end
  end
end
