@apiTest
Feature: Delete API karate demo

  Background:
    * url "https://reqres.in/api"
    * header Accept = 'application/json'

    #Simple Delete request full url
  Scenario: Delete API method 1 - Using full url endpoint
    Given url "https://reqres.in/api/users/2"
    When method DELETE
    Then status 204
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

    #Get request using Background
  Scenario: Delete API method 2 - using Background
    Given path "/users/2"
    When method DELETE
    Then status 204
    And print response
    And print responseStatus
