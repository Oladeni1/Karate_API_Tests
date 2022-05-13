@apiTest
Feature: Put API karate demo

  Background:
    * url "https://reqres.in/api"
    * header Accept = 'application/json'

    #Simple Put request full url
  Scenario: Put API method 1 - Using full url endpoint
    Given url "https://reqres.in/api/users/2"
    And request {"name": "morpheus", "job": "zion resident"}
    When method PUT
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

    #Put request Using background
  Scenario: Put API method 2 - Using background
    Given path "/users/2"
    And request {"name": "morpheus", "job": "zion resident"}
    When method PUT
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies