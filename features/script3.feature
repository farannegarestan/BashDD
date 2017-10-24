Feature: Testing script3.sh as a bash script to see how a file is created

  Scenario: Testing how a Bash script can create a file
     Given we run "script3.sh"
     Then File with absolute path of "/etc/test_file" is created.
