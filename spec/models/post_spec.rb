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
  end
end
