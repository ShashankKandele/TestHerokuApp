Feature:HerokuApp - Read

  Background: consume service
    * url apiUrl

  Scenario: Read restful booker herokuapp
    Given path 'booking'
    When method GET
    Then status 200
    And assert responseTime < 4000
    * def getResponse = response

    And match response.[*].firstname == "#present", "#string", "#notnull"
    And match response.[*].lastname == "#present", "#string", "#notnull"
    And match response.[*].totalprice == "#present", "#number", "#notnull"
    And match response.[*].depositpaid == "#present", "#boolean", "#notnull"
    And match response.[*].[*].checkin == "#present", "#date", "#notnull"
    And match response.[*].[*].checkout == "#present", "#date", "#notnull"
    And match response.[*].additionalneeds == "#present", "#string", "#notnull"

    And print 'getResponse: ', response