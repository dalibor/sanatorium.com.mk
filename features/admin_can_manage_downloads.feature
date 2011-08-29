Feature: Admin can manage downloads
  In order to have downloads
  As an admin
  I want to be able to manage downloads


  Scenario: Admin can manage downloads in administration
    Given I am signed in as "admin@sanatorium.com.mk"
    When I follow "Downloads"
      And I follow "New"
      And I fill in "Name" with "Ultra Speed"
      And I attach the file "spec/fixtures/rails1.png" to "Attachment"
      And I select "Audio" from "Raw type"
      And I press "Save"
    Then I should see "Download was successfully created"
      And I should see "Ultra Speed"
      And I should see "rails1.png"
      And I should see "Audio"

    When I follow "Edit"
      And I fill in "Name" with "Hell Master"
      And I attach the file "spec/fixtures/rails2.png" to "Attachment"
      And I select "Video" from "Raw type"
      And I press "Save"
    Then I should see "Download was successfully updated"
      And I should see "Hell Master"
      And I should see "Video"
      And I should see "rails2.png"

    When I follow "Delete"
    Then I should see "Download was successfully destroyed"
