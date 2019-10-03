Feature: browser automation 1

  Background:
    * configure driver = { type: 'chrome', showDriverLog: false }
  # * configure driverTarget = { docker: 'justinribeiro/chrome-headless', showDriverLog: true }
  # * configure driverTarget = { docker: 'ptrthomas/karate-chrome', showDriverLog: true }
  # * configure driver = { type: 'chromedriver', showDriverLog: true }
  # * configure driver = { type: 'geckodriver', showDriverLog: true }
  # * configure driver = { type: 'safaridriver', showDriverLog: true }

  Scenario: Validate page title

    Given driver 'https://google.com'
    And driver.maximize()
    Then match driver.title == 'Google' // This will not work with 0.9.4

