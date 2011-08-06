Feature: Visitor cannot see administration
  In order to prevent visitor to change the site
  As a visitor
  I want to not be able to access administration

    @run
  Scenario: Visitor cannot access administration
    When I go to the admin welcome page
    Then I should see "Access denied"
      And I should be on the login page
