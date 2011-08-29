require 'spec_helper'

describe Page do
  describe "Attributes" do
    it { should allow_mass_assignment_of :content }
  end

  describe "Validations" do
    subject { Factory(:page) }
    it { should validate_presence_of :key }
    it { should validate_presence_of :content }
    it { should validate_uniqueness_of :key }
  end
end
