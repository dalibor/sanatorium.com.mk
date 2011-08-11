Feature: A visitor can write comments
  In order to comment on a post
  As a visitor
  I want to be able to write comments

  Background:
    Given a post exists with title: "New Concert at Kale"
    When I am on list of posts
    And I follow "New Concert at Kale"

  Scenario: Create new comment
    When I fill in "Name" with "John Doe"
    And I fill in "Email" with "john.doe@sanatorium.com.mk"
    And I fill in "URL" with "http://www.sanatorium.com.mk"
    And I fill in "Comment" with "My first comment"
    And I press "Comment"
    Then I should see "Your comment was successfully created"
    And I should see "My first comment"

  Scenario: See comment errors
    When I press "Comment"
    Then I should see "Please correct invalid fields in the form"
    And I should see "Name can't be blank"
    And I should see "Email can't be blank, is not a valid email"
    And I should see "Comment can't be blank"

