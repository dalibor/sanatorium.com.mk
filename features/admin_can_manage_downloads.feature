Feature: Admin can manage downloads
  In order to have downloads
  As an admin
  I want to be able to manage downloads


  Scenario: Admin can manage downloads in administration
    Given I am signed in as "admin@sanatorium.com.mk"
    When I follow "Downloads"
      And I follow "New"
      And I fill in "Name" with "Na Rabot Na Razumot"
      And I fill in "Name En" with "The Edge Of Sanity"
      And I attach the file "spec/fixtures/rails1.png" to "Attachment"
      And I select "Audio" from "Raw type"
      And I press "Save"
    Then I should see "Download was successfully created"
      And I should see "Na Rabot Na Razumot"
      And I should see "The Edge Of Sanity"
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

  Scenario: Change position of photo
    Given I am signed in as "admin@sanatorium.com.mk"
      And download exists with raw_type: "Audio", name: "Song 1"
      And download exists with raw_type: "Audio", name: "Song 2"
    When I follow "Downloads"
    Then I should see "Song 1" within ".odd"
      And I should see "Song 2" within ".even"

    When I follow "Move higher"
    Then I should see "Song 2" within ".odd"
      And I should see "Song 1" within ".even"

    When I follow "Move lower"
    Then I should see "Song 1" within ".odd"
      And I should see "Song 2" within ".even"
