Feature: Merge articles
  As a blog administrator
  In order to DRY out similar pages
  I want to be able to merge articles

  Background:
    Given the blog is set up
    And login "publisher" is registered as publisher
    And two articles with comments are created    
  
  Scenario: User publisher shouldn't be able to merge articles
    Given I am logged as "publisher"
    And I am on the dashboard
    When I go to the edit article page
    Then I should not see "Merge articles"

    