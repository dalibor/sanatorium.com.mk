Feature: Admin can change their credentials
  In order to have secure credentials
  As an admin
  I want to be able to change my credentials

  Scenario: Admin can change their credentials
    Given I am signed in as "admin@sanatorium.com.mk"

    When I follow "Settings"
      And I fill in "Email" with "admin2@sanatorium.com.mk"
      And I fill in "Password" with "newpassword"
      And I fill in "Password confirmation" with "newpassword"
      And I press "Save"
    Then I should see "Settings were successfully updated"

    When I follow "Logout"
      And I go to the login page
      And I fill in "Email" with "admin2@sanatorium.com.mk"
      And I fill in "Password" with "newpassword"
      And I press "Login"
    Then I should see "You have successfully signed in"
