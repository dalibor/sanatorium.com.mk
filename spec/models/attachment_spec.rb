require 'spec_helper'

describe Attachment do
  describe "Attributes" do
    it { should allow_mass_assignment_of :name }
    it { should allow_mass_assignment_of :attachment }
    it { should allow_mass_assignment_of :name_en }
  end

  describe 'Validations' do
    subject { Factory.create(:attachment) }
    it { should be_valid }
    it { should validate_presence_of :name }
    it { should validate_presence_of :name_en }

    it "validates attachment presence (on create)" do
      download = Factory.build(:download, :attachment => nil)
      download.should validate_presence_of :attachment
    end
  end
end
