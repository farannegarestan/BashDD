Feature: Integration testing of all features

  Scenario: Test if integration script has all expeccted behavior
    Given we run "integration.sh"
    
    Then Environment variable "SDK_CONF" is set to "/etc/sdk.conf"
    
    Then File with absolute path of "/etc/sdk.conf" is created.
    
    Then The file "/etc/sdk.conf" has "644" permission.
    
    Then The file "/etc/sdk.conf" contains the following lines
      | Line |
      | timeout=1000 |
      | debug=True   |
      | errorlevel=3 |
    
    Then Package "nginx" is installed.  
    Then Service "nginx" is "running".
    Then Port "80" is listening.
    
    Then File with absolute path of "/var/www/index.html" is created.
    Then The file "/var/www/index.html" contains the following lines
       | Line |
       | <html> |
       | <head></head> |
       | <body> |
       | <h1> Hello Docker COntainer </h1> |
       | </body> |
       | </html> |
    
    
    