Feature: Admin can manage galleries
  In order to have galleries
  As an admin
  I want to be able to manage galleries


  Scenario: Admin can manage galleries in administration
    Given I am signed in as "admin@sanatorium.com.mk"
    When I follow "Galleries"
      And I follow "New"
      And I fill in "Name" with "Kale Gallery"
      And I fill in "Description" with "Photos from concert at Kale"
      And I attach the file "spec/fixtures/rails1.png" to "Cover"
      And I press "Save"
    Then I should see "Gallery was successfully created"
      And I should see "Kale Gallery"
      And I should see "Photos from concert at Kale"
      And I should see "rails1.png" image

    When I follow "Edit"
      And I fill in "Name" with "Kale Gallery updated"
      And I fill in "Description" with "Photos from concert at Kale updated"
      And I attach the file "spec/fixtures/rails2.png" to "Cover"
      And I press "Save"
    Then I should see "Gallery was successfully updated"
      And I should see "Kale Gallery updated"
      And I should see "Photos from concert at Kale updated"
      And I should see "rails2.png" image

    When I follow "Delete"
    Then I should see "Gallery was successfully destroyed"
      And I should not see "Kale Gallery"
      And I should not see "Kale Gallery updated"
