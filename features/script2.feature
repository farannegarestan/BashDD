Feature: Testing script2.sh to see how it converts number to string

  Scenario: Testing how a Bash script can introduce an Environment Variable with input
     Given we run "script2.sh 1"
     Then Environment variable "NUMBER" is set to "ONE"

  Scenario: Testing how a Bash script can introduce an Environment Variable with input
     Given we run "script2.sh 2"
     Then Environment variable "NUMBER" is set to "TWO"

  Scenario: Testing how a Bash script can introduce an Environment Variable with input
     Given we run "script2.sh 3"
     Then Environment variable "NUMBER" is set to "THREE"

  Scenario: Testing how a Bash script can introduce an Environment Variable with input
     Given we run "script2.sh 4"
     Then Environment variable "NUMBER" is set to "MANY"