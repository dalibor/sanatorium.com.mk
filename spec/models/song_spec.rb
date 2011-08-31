require 'spec_helper'

describe Song do
  describe "Attributes" do
    it { should allow_mass_assignment_of :name }
    it { should allow_mass_assignment_of :lyrics }
    it { should allow_mass_assignment_of :name_en }
    it { should allow_mass_assignment_of :lyrics_en }
  end

  describe "Associations" do
    it { should belong_to :release }
  end

  describe "Validations" do
    subject { Factory(:song) }
    it { should validate_presence_of :release_id }
    it { should validate_presence_of :name }
    it { should validate_presence_of :lyrics }
    it { should validate_presence_of :name_en }
    it { should validate_presence_of :lyrics_en }
  end
end
