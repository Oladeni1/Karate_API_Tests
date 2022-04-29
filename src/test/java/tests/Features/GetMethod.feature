@apiTest
Feature: Get API karate demo

  Background:
    * url "https://reqres.in/api"
    * header Accept = 'application/json'

    #Simple Get request full url
  Scenario: Get API method 1 - Using full url endpoint
    Given url "https://reqres.in/api/users?page=2"
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

    #Get request using Background
  Scenario: Get API method 2 - using Background
    Given path "/users?page=2"
    When method GET
    Then status 200
    And print response
    And print responseStatus

    #Get request using path and param
  Scenario: Get API method 3 - using path and param
    Given path "/users"
    And param page = 2
    When method GET
    Then status 200
    And print response
    And print responseStatus

    #Get request using assertions
  Scenario: Get API method 3 - using assertions
    Given path "/users"
    And param page = 2
    When method GET
    Then status 200
    And print response
    And match $.data[0].first_name == 'Michael'
    And assert response.data.length == 6
    And match $.data[3].id == 10
    And match $.support.url == 'https://reqres.in/#support-heading'
    And match response.data[4].email == 'george.edwards@reqres.in'





