Feature: Admin can login
  In order to manage the site
  As an admin
  I want to be able to login

  Scenario: Admin can login
    Given an admin exists
    When I go to the login page
      And I fill in "Email" with "admin@sanatorium.com.mk"
      And I fill in "Password" with "password"
      And I press "Login"
    Then I should see "Welcome to Administration"


  Scenario: Admin can see login errors
    Given an admin exists
    When I go to the login page
      And I fill in "Email" with "admin@sanatorium.com.mk"
      And I fill in "Password" with "password1"
      And I press "Login"
    Then I should see "Invalid email or password"


  Scenario: Admin can logout
    Given I am signed in as "admin@sanatorium.com.mk"

    When I follow "Logout"
    Then I should be on the home page

    When I go to the admin welcome page
    Then I should see "Access denied"
