@apiTest
Feature: API karate test demo

  Scenario: Sample get API
    Given url "https://reqres.in/api/users?page=2"
    When method GET
    Then status 200


