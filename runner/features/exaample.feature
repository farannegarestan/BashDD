Feature: Testing a Bash Script using BDD

  Scenario: Testing how a Bash script can introduce an Environment Variable
     Given we run "sample.sh"
     Then Environment variable "TEXT_VAR" is set to "TEST_VAL"