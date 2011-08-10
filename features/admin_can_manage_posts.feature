Feature: Admin can manage blog posts
  In order to have blog posts
  As an admin
  I want to be able to manage posts


  Scenario: Admin can manage posts in administration
    Given I am signed in as "admin@sanatorium.com.mk"
    When I follow "Posts"
      And I follow "New"
      And I fill in "Title" with "New concert"
      And I fill in "Content" with "New concert at Kale"
      And I check "Publish"
      And I press "Save"
    Then I should see "Post was successfully created"

    When I follow "Show"
    Then I should see "New concert"
      And I should see "New concert at Kale"
      And I should see "admin@sanatorium.com.mk"

    When I follow "Edit"
      And I fill in "Title" with "New photos"
      And I fill in "Content" with "New photos published"
      And I press "Save"
    Then I should see "Post was successfully updated"
      And I should see "New photos"
      And I should not see "New photos published"

    When I follow "Delete"
    Then I should see "Post was successfully destroyed"
      And I should not see "New photos"
      And I should not see "New convert"
