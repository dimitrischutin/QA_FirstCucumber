Feature: Create

  @validData
  Scenario: Registration with valid data
    Given Navigate to Page on PhoneBook
    When Click on Login tab
    And Enter a new valid data
    And Click on registration button
    Then SignOut tab displayed