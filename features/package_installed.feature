Feature: Test if a package is installed

  Scenario: Test if script has installed a package sucessfully
    Given we run "package_installed.sh"
    Then Package "htop" is installed.