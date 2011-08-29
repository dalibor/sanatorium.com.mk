Feature: Admin can manage attachments
  In order to have attachments in posts
  As an admin
  I want to be able to manage attachments


  Scenario: Admin can manage attachments in administration
    Given I am signed in as "admin@sanatorium.com.mk"
    When I follow "Attachments"
      And I follow "New"
      And I fill in "Name" with "Image1"
      And I attach the file "spec/fixtures/rails1.png" to "Attachment"
      And I press "Save"
    Then I should see "Attachment was successfully created"
      And I should see "Image1"
      And I should see "rails1.png"

    When I follow "Edit"
      And I fill in "Name" with "Image2"
      And I attach the file "spec/fixtures/rails2.png" to "Attachment"
      And I press "Save"
    Then I should see "Attachment was successfully updated"
      And I should see "Image2"
      And I should see "rails2.png"

    When I follow "Delete"
    Then I should see "Attachment was successfully destroyed"
