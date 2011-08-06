Given /^I am signed in as "([^"]*)"$/ do |email|
  %Q{
    Given an admin exists
    When I go to the login page
      And I fill in "Email" with "#{email}"
      And I fill in "Password" with "password"
      And I press "Login"
    Then I should see "Welcome to Administration"
  }
end
