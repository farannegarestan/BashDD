Feature: Test if a user is created and is member of a group

  Scenario: Test if script has created and updated user
    Given we run "user.sh"
    Then User "jack" exists.
    Then User "jack" is member of "jackgroup".
