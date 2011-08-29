Feature: Admin can manage releases
  In order to have releases
  As an admin
  I want to be able to manage releases


  Scenario: Admin can manage releases in administration
    Given I am signed in as "admin@sanatorium.com.mk"
    When I follow "Releases"
      And I follow "New"
      And I fill in "Name" with "The Edge Of Sanity"
      And I fill in "Description" with "Longer description"
      And I fill in "Year" with "1992"
      And I fill in "Label" with "No-label"
      And I attach the file "spec/fixtures/rails1.png" to "Cover"
      And I press "Save"
    Then I should see "Release was successfully created"
      And I should see "The Edge Of Sanity"
      And I should see "Longer description"
      And I should see "1992"
      And I should see "No-label"
      And I should see "rails1.png" image

    When I follow "Edit"
      And I fill in "Name" with "No More"
      And I press "Save"
    Then I should see "Release was successfully updated"
      And I should see "No More"

    When I follow "Delete"
    Then I should see "Release was successfully destroyed"
      And I should not see "The Edge Of Sanity"
      And I should not see "No More"
