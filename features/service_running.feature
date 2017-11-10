Feature: Test if a service is running

  Scenario: Test if script has started a service sucessfully
    Given we run "service_running.sh"
    Then Service "nginx" is "running".
