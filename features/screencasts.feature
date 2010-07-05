Feature: Screencasts
  As a user of the site
  In order to be a better programmer
  I want to view screencasts
  
  Scenario: Viewing Screencast List
    Given the site has some screencasts
    When I go to the home page
    Then I should see the screencasts