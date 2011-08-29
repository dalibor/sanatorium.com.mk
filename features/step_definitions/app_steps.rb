Given /^I am signed in as "([^"]*)"$/ do |email|
  steps %Q{
    Given an admin exists
    When I go to the login page
      And I fill in "Email" with "#{email}"
      And I fill in "Password" with "password"
      And I press "Login"
    Then I should see "Welcome to Administration"
  }
end

Given /^gallery and photos exists$/ do
  gallery = Factory(:gallery)
  photo1  = Factory(:photo, :gallery => gallery, :position => 1,
                    :image => File.open(File.join(Rails.root, 'spec', 'fixtures', 'rails1.png')))
  photo1  = Factory(:photo, :gallery => gallery, :position => 2,
                    :image => File.open(File.join(Rails.root, 'spec', 'fixtures', 'rails2.png')))
end

Given /^release and songs exists$/ do
  release = Factory(:release)
  photo1  = Factory(:song, :release => release, :position => 1,
                    :name => 'Senka Na Smrtta')
  photo2  = Factory(:song, :release => release, :position => 2,
                    :name => 'Bez Razum I Svest')
end

