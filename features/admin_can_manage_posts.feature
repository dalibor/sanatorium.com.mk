Feature: Admin can manage blog posts
  In order to have blog posts
  As an admin
  I want to be able to manage posts


  Scenario: Admin can manage posts in administration
    Given I am signed in as "admin@sanatorium.com.mk"
    When I follow "Posts"
      And I follow "New"
      And I fill in "Title" with "Nov koncert"
      And I fill in "Title En" with "New concert"
      And I fill in "Content" with "Nov koncert na Kale"
      And I fill in "Content En" with "New concert at Kale"
      And I check "Publish"
      And I press "Save"
    Then I should see "Post was successfully created"
      And I should see "Nov koncert"
      And I should see "New concert"
      And I should see "Nov koncert na Kale"
      And I should see "New concert at Kale"
      And I should see "admin@sanatorium.com.mk"

    When I follow "Edit"
      And I fill in "Title" with "Novi sliki"
      And I fill in "Content" with "Objaveni novi sliki"
      And I press "Save"
    Then I should see "Post was successfully updated"
      And I should see "Novi sliki"
      And I should not see "Nov koncert"

    When I follow "Delete"
    Then I should see "Post was successfully destroyed"
      And I should not see "Novi sliki"
      And I should not see "Nov koncert"
