@apiTest
Feature: Config file karate demo

  Background:
    * url baseURL
    * header Accept = 'application/json'

  Scenario: Config demo 1
    Given print name

    #Simple Get request from karate config file
  Scenario: Get API method 1 - Using karate config file
    Given path "/users?page=2"
    When method GET
    Then status 200
    And print response



