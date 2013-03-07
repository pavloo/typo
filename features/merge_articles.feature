Feature: Merge articles
  As a blog administrator
  In order to DRY out similar pages
  I want to be able to merge articles

  Background:
    Given the blog is set up
    And login "publisher" is registered as publisher
    And two articles with comments are created    
  
  Scenario: A non-admin cannot merge two articles
    Given I am logged as "publisher"
    And I am on the all articles page
    When I try to edit some page
    Then I should not see "Merge articles"

  Scenario: When articles are merged, the merged article should contain the text of both previous articles      
    Given I am logged as "admin"
    And I am on the all articles page
    When I try to edit some page
    Then I should see "Merge articles"
    
    