Feature: Admin can manage pages
  In order to have pages
  As an admin
  I want to be able to manage pages


  Scenario: Admin can edit bio page in administration
    Given a page exists with key: "bio", content: "Sanatorium Biografija", content_en: "Sanatorium Biography"
      And I am signed in as "admin@sanatorium.com.mk"
    When I follow "Pages"
    Then I should not see "New"
      And I should not see "Delete"
    When I follow "Edit"
      And I fill in "Content" with "Sanatorium Biografija izmena"
      And I fill in "Content En" with "Sanatorium Biography changed"
      And I press "Save"
    Then I should see "Page was successfully updated"
      And I should see "Sanatorium Biografija izmena"
      And I should see "Sanatorium Biography changed"
