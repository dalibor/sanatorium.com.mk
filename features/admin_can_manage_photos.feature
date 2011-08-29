Feature: Admin can manage photos
  In order to have photos
  As an admin
  I want to be able to manage photos


  Scenario: Admin can manage photos in administration
    Given I am signed in as "admin@sanatorium.com.mk"
      And a gallery exists with name: "Photos from Kale"
    When I follow "Galleries"
      And I follow "Photos"
      And I follow "New"
      And I attach the file "spec/fixtures/rails1.png" to "Image"
      And I press "Save"
    Then I should see "Photo was successfully created"
      And I should see "rails1.png" image

    When I follow "Edit"
      And I attach the file "spec/fixtures/rails2.png" to "Image"
      And I press "Save"
    Then I should see "Photo was successfully updated"
      And I should see "rails2.png" image

    When I follow "Delete"
    Then I should see "Photo was successfully destroyed"


  Scenario: Change position of photo
    Given I am signed in as "admin@sanatorium.com.mk"
      And gallery and photos exists
    When I follow "Galleries"
      And I follow "Photos"
    Then I should see "rails1.png" within ".odd"
      And I should see "rails2.png" within ".even"

    When I follow "Move higher"
    Then I should see "rails2.png" within ".odd"
      And I should see "rails1.png" within ".even"

    When I follow "Move lower"
    Then I should see "rails1.png" within ".odd"
      And I should see "rails2.png" within ".even"
