Feature: Create Interactive Gallery widget

Background: User is logged in and on the Campaign Dashboard page
Given I logged in as "tatianatest7" user and "987654321ts" password
When I go to Campaigns page
And I click on Create Campaign button
And I enter "any" into the Campaign hashtag field and "mydescription" description
Then I should be on Campaign Dashboard page

Scenario: Create Interactive Gallery widget
    When I click Create new widget button
    And I select Interactive Gallery
    And I publish new widget with "any" name visible in the Gallery
    Then I should see widget name on the Campaign Dashboard page

Scenario: Create Uploader widget
    When I click Create new widget button
    And I select Upload widget
    And I publish it with "any" widget name
    Then I should see uploader name on the Campaign Dashboard page

    