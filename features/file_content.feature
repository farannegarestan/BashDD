Feature: Testing the content of a file generated using a script

  Scenario: Testing how a Bash script can create a file and verify the content
    Given we run "file_content.sh"
    Then File with absolute path of "/etc/test_file2" is created.
    
    Then The file "/etc/test_file2" contains the following lines
      | Line |
      | pwd |
      | sudo rm -rf / |
    
    Then The file "/etc/test_file2" contains only the following lines
      | Line |
      | Test File |
      | ./command arg1 arg2 arg3 > output |
      | pwd |
      | sudo rm -rf / |
    
    Then The file "/etc/test_file2" does not contain the following lines
      | Line |
      | random line|