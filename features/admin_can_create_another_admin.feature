Feature: Admin can create another admin
  In order to manage and update the site
  As an admin
  I want to be able to create another admin

    @run
  Scenario: Admin can create another admin
    Given I am signed in as "admin@sanatorium.com.mk"

    When I follow "Users"
      And I follow "New"
      And I fill in "Email" with "admin2@sanatorium.com.mk"
      And I fill in "Password" with "newpassword"
      And I fill in "Password confirmation" with "newpassword"
      And I press "Save"
    Then I should see "Successfully created user"

    When I follow "Logout"
      And I go to the login page
      And I fill in "Email" with "admin2@sanatorium.com.mk"
      And I fill in "Password" with "newpassword"
      And I press "Login"
    Then I should see "You have successfully signed in"
