Feature: Visitor can see home page
  In order to read news about Sanatorium
  As a visitor
  I want to be able to see the homepage

Scenario: Visitor can see dashboard
  When I go to the home page
  Then I should see "Sanatorium" within "h1"
