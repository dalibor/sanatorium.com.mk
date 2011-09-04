Feature: A visitor can view posts
  In order to read the blog
  As a visitor
  I want to be able to view posts


  Scenario: View list of posts
    Given a post exists with title: "New Concert at Kale"
      And a post exists with title: "New Photos"
    When I am on the home page
      And I follow "News"
    Then I should see "New Concert at Kale"
      And I should see "New Photos"

  Scenario: View single post
    Given a post exists with title: "New Concert at Kale"
      And a post exists with title: "New Photos"
    When I am on the home page
      And I follow "News"
      And I follow "New Concert at Kale"
    Then I should see "New Concert at Kale"
      And I should not see "New Photos"

  Scenario: Don't display unpublished posts
    Given a post exists with title: "New Concert at Kale", publish: nil, published_at: nil
    When I am on the home page
      And I follow "News"
    Then I should not see "New Concert at Kale"
