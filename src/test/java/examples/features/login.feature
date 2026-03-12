Feature: Sample login

  Background:
    * configure driver = {type: 'chrome', executable: '/usr/local/bin/chromium-wrapper.sh'}
    * driver 'http://localhost:5173'
    * path 'login'

  Scenario:
    Given waitFor("#username").input('Daminou')
    And waitFor("#password").input('Daminou')
    When click("button[type='submit']")
    Then waitForUrl('http://localhost:5173/planning')
