Feature: Visitor can see band bio
  In order to learn about Sanatorium
  As a visitor
  I want to be able to see band biography

Scenario: Visitor can see band bio
  Given a page exists with key: "band", content: "Sanatorium Biography"
  When I go to the home page
    And I follow "Band"
  Then I should see "Sanatorium Biography"
