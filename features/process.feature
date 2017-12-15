Feature: Test if a process is running

  Scenario: Test if script started a process successfully
    Given we run "process.sh"
    Then Process "named" is running.
