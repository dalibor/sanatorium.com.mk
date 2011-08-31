Feature: Admin can manage songs
  In order to have songs
  As an admin
  I want to be able to manage songs


  Scenario: Admin can manage songs in administration
    Given I am signed in as "admin@sanatorium.com.mk"
      And a release exists with name: "The Edge Of Sanity"
    When I follow "Releases"
      And I follow "Songs"
      And I follow "New"
      And I fill in "Name" with "Senka Na Smrtta"
      And I fill in "Name En" with "Shadow Of Death"
      And I fill in "Lyrics" with "Tekst na Pesna"
      And I fill in "Lyrics En" with "Song lyrics"
      And I press "Save"
    Then I should see "Song was successfully created"
      And I should see "Senka Na Smrtta"
      And I should see "Shadow Of Death"
      And I should see "Tekst na Pesna"
      And I should see "Song lyrics"

    When I follow "Edit"
      And I fill in "Name" with "Bez Razum I Svest"
      And I press "Save"
    Then I should see "Song was successfully updated"
      And I should see "Bez Razum I Svest"

    When I follow "Delete"
    Then I should see "Song was successfully destroyed"


  Scenario: Change position of song
    Given I am signed in as "admin@sanatorium.com.mk"
      And release and songs exists
    When I follow "Releases"
      And I follow "Songs"
    Then I should see "Senka Na Smrtta" within ".odd"
      And I should see "Bez Razum I Svest" within ".even"

    When I follow "Move higher"
    Then I should see "Bez Razum I Svest" within ".odd"
      And I should see "Senka Na Smrtta" within ".even"

    When I follow "Move lower"
    Then I should see "Senka Na Smrtta" within ".odd"
      And I should see "Bez Razum I Svest" within ".even"
