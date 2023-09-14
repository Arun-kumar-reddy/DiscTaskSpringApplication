Feature: Test to add an employee

  Scenario Outline: Send a valid Request to POST an employee
    Given set to Base URI "http://localhost:1001"
    And Request body is set to:
      | Field     | Value        |
      | empId     | <empId>      |
      | empName   | <empName>    |
      | empEmail  | <empEmail>   |
     
    When POST request is sent to "/empdetails/addEmployee"
    Then Response Code status is validated 
    And verify response content type is "application/json"
    And print out the response body to console
