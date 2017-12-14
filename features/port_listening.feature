Feature: Test if a port is listening

  Scenario: Test if script has made a port listening successfully
    Given we run "port_listening.sh"
    Then Port "22" is listening.
