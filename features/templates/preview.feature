Feature: Previewing
  A Template's body can be previewed


  Scenario: Preview template body
    Given the following template template:
    """
      {
         "response":{
            "body":"SGVsbG8="
         },
         "request":{
         }
      }
    """
    And the template is sent using PUT to '/templates/greeting'
    When GET is sent to '/templates/1/preview'
    Then 'Hello' should be returned