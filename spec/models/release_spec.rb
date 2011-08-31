require 'spec_helper'

describe Release do
  describe "Attributes" do
    it { should allow_mass_assignment_of :name }
    it { should allow_mass_assignment_of :description }
    it { should allow_mass_assignment_of :year }
    it { should allow_mass_assignment_of :label }
    it { should allow_mass_assignment_of :cover }
    it { should allow_mass_assignment_of :name_en }
    it { should allow_mass_assignment_of :description_en }
  end

  describe "Associations" do
    it { should have_many :songs }
  end

  describe "Validations" do
    subject { Factory(:release) }
    it { should validate_presence_of :name }
    it { should validate_presence_of :description }
    it { should validate_presence_of :year }
    it { should validate_presence_of :label }
    it { should validate_presence_of :name_en }
    it { should validate_presence_of :description_en }

    it "validates cover presence (on create)" do
      release = Factory.build(:release, :cover => nil)
      release.should validate_presence_of :cover
    end
  end
end
