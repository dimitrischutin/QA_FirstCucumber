Feature: Login

  @validData
  Scenario: Login with valid data
    Given Navigate to Page on PhoneBook
    When Click on Login tab
    And Enter a valid data
    And Click on Login button
    Then SignOut tab displayed


  @invalidData

  Scenario Outline: Login with invalid data
    Given Navigate to Page on PhoneBook
    When Click on Login tab
    And Enter a valid email and invalid password
      | email   | password   |
      | <email> | <password> |
    And Click on Login button
    Then Alert appeared
    Examples:
      | email          | password      |
      | kroosss@gm.com | Kroos12345~13 |
      | kroosss@gm.com | kroos12345~12 |

