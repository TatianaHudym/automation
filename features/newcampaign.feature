Feature: Create new Campaign

Background: 
Given I logged in as "tatianatest7" user and "987654321ts" password

  Scenario: Create new Campaign
    When I go to Campaigns page
    And I click on Create Campaign button
    And I enter "any" into the Campaign hashtag field and "mydescription" description
    Then I should be on Campaign Dashboard page

 
 
 
 
