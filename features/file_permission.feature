Feature: Testing permissions of a file modified by a script

  Scenario: Testig File Permissions
    Given we run "file_permission.sh"
    Then File with absolute path of "/etc/test_file3" is created.
    Then The file "/etc/test_file3" has "777" permission.