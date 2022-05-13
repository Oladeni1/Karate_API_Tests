@apiTest
Feature: Post API karate demo

  Background:
    * url "https://reqres.in/api"
    * header Accept = 'application/json'
    * def expectedResponseOutput = read("PostResponse.json")
    * def expectedRequestOutput = read("PostRequest.json")

       #Post request using full url endpoint
  Scenario: Post API method 1 - using full endpoint
    Given path "https://reqres.in/api/users"
    And request {"name": "Ola1", "job": "Tester"}
    When method POST
    Then status 201
    And print response
    And print responseStatus

    #Post request using Background
  Scenario: Post API method 2 - using Background
    Given path "/users"
    And request {"name": "Ola2", "job": "Test Leader"}
    When method POST
    Then status 201
    And print response
    And print responseStatus

    #Post request using response Assertions
  Scenario: Post API method 3 - using response Assertions
    Given path "/users"
    And request {"name": "Ola2", "job": "Test Leader"}
    When method POST
    Then status 201
    And match response == {"name": "Ola2","job": "Test Leader","id": "#string","createdAt": "#ignore"}
    And print response
    And print responseStatus

    #Post request using reading PostResponse.json file
  Scenario: Post API method 4 - using reading PostResponse.json file
    Given path "/users"
    And request {"name": "Ola1", "job": "Tester"}
    When method POST
    Then status 201
    And match response == expectedResponseOutput
    And print response
    And print responseStatus

    #Post request using reading PostRequest.json file
  Scenario: Post API method 5 - using reading PostRequest.json file
    Given path "/users"
    And request expectedRequestOutput
    When method POST
    Then status 201
    And match response == expectedResponseOutput
    And print response
    And print responseStatus

    #Post request using set new data to Request.json file
  Scenario: Post API method 6 - using set new data to Request.json file
    Given path "/users"
    And def reqBody = read("PostRequest.json")
    And set reqBody.name = "Hacker"
    And set reqBody.job = "Security Analyst"
    When method POST
    Then status 201
    And print response
    And print responseStatus