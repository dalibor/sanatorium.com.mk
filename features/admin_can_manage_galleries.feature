Feature: Admin can manage galleries
  In order to have galleries
  As an admin
  I want to be able to manage galleries


  Scenario: Admin can manage galleries in administration
    Given I am signed in as "admin@sanatorium.com.mk"
    When I follow "Galleries"
      And I follow "New"
      And I fill in "Name" with "Kale Galerija"
      And I fill in "Name En" with "Kale Gallery"
      And I fill in "Description" with "Sliki od koncertot na Kale"
      And I fill in "Description En" with "Photos from concert at Kale"
      And I attach the file "spec/fixtures/rails1.png" to "Cover"
      And I press "Save"
    Then I should see "Gallery was successfully created"
      And I should see "Kale Galerija"
      And I should see "Kale Gallery"
      And I should see "Sliki od koncertot na Kale"
      And I should see "Photos from concert at Kale"
      And I should see "rails1.png" image

    When I follow "Edit"
      And I fill in "Name" with "Kale Galerija update"
      And I fill in "Description" with "Sliki od koncertot na Kale update"
      And I attach the file "spec/fixtures/rails2.png" to "Cover"
      And I press "Save"
    Then I should see "Gallery was successfully updated"
      And I should see "Kale Galerija update"
      And I should see "Sliki od koncertot na Kale update"
      And I should see "rails2.png" image

    When I follow "Delete"
    Then I should see "Gallery was successfully destroyed"
      And I should not see "Kale Galerija"
      And I should not see "Kale Galerija update"


    Scenario: Change position of gallery
      Given I am signed in as "admin@sanatorium.com.mk"
        And gallery exists with name: "Gallery 1"
        And gallery exists with name: "Gallery 2"
      When I follow "Galleries"
      Then I should see "Gallery 1" within ".odd"
        And I should see "Gallery 2" within ".even"

      When I follow "Move higher"
      Then I should see "Gallery 2" within ".odd"
        And I should see "Gallery 1" within ".even"

      When I follow "Move lower"
      Then I should see "Gallery 1" within ".odd"
        And I should see "Gallery 2" within ".even"
