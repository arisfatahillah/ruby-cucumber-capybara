@login
Feature: Simple test login feature

  Scenario: User can login to testphp
    Given user go to login page
    When user login using email "test" and password "test"
    Then user successfully login
