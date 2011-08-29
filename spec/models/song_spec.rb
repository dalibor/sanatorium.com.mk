require 'spec_helper'

describe Song do
  describe "Attributes" do
    it { should allow_mass_assignment_of :name }
    it { should allow_mass_assignment_of :lyrics }
  end

  describe "Associations" do
    subject { Factory(:song) }
    it { should belong_to :release }
  end

  describe "Validations" do
    it { should validate_presence_of :release_id }
    it { should validate_presence_of :name }
    it { should validate_presence_of :lyrics }
  end
end
