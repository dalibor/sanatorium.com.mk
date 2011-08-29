Feature: Manage comments
  In order to have cool comments
  As an admin
  I want to be able to manage comments

  Scenario: Admin can manage comments
    Given I am signed in as "admin@sanatorium.com.mk"
    And I follow "Posts"
    And a post exists with title: "New concert"
    When I follow "Comments"
      And I follow "New"
      And I select "New concert" from "Post"
      And I fill in "Name" with "John Doe"
      And I fill in "Email" with "user@sanatorium.com.mk"
      And I fill in "Content" with "New comment"
      And I check "Approve"
      And I press "Save"
    Then I should see "Comment was successfully created"
      And I should see "New concert"
      And I should see "John Doe"
      And I should see "user@sanatorium.com.mk"
      And I should see "New comment"
      And I should see "true"

    When I follow "Edit"
      And I fill in "Name" with "Sanatorium"
      And I press "Save"
    Then I should see "Comment was successfully updated"
    And I should see "Sanatorium"

    When I follow "Delete"
    Then I should see "Comment was successfully destroyed"
    And I should not see "Bad Site"

