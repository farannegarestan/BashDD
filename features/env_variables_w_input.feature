Feature: Testing env_variables_w_input.sh to see how it converts number to string

  Scenario: Testing how a Bash script can introduce an Environment Variable with input
     Given we run "env_variables_w_input.sh 1"
     Then Environment variable "NUMBER" is set to "ONE"

  Scenario: Testing how a Bash script can introduce an Environment Variable with input
     Given we run "env_variables_w_input.sh 2"
     Then Environment variable "NUMBER" is set to "TWO"

  Scenario: Testing how a Bash script can introduce an Environment Variable with input
     Given we run "env_variables_w_input.sh 3"
     Then Environment variable "NUMBER" is set to "THREE"

  Scenario: Testing how a Bash script can introduce an Environment Variable with input
     Given we run "env_variables_w_input.sh 4"
     Then Environment variable "NUMBER" is set to "MANY"