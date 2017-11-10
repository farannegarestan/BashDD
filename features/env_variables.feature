Feature: Testing env_variables.sh as a bash script to evaluate created environment variables

  Scenario: Testing how a Bash script can introduce an Environment Variable
     Given we run "env_variables.sh"
     Then Environment variable "VAR_ONE" is set to "This is value for variable one."
     Then Environment variable "VAR_TWO" is set to "666"
     Then Environment variable "VAR_THREE" is set to "something"
     Then Environment variable "VAR_FOUR" is not set