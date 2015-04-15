Feature: Click in CrossWalk

  Scenario: As a user I want to click in CrossWalk webview
    Given I do see the text "Hello, world!" in webview
    And I do not see the text "The secret has been revealed!" in webview
    When I click the text "Show more" in webview
    Then I do see the text "The secret has been revealed!" in webview
